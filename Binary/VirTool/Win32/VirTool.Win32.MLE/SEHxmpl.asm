;@GOTO TRANSLATE

.586P
.MODEL FLAT, STDCALL

 EXTRN ExitProcess:PROC 
 EXTRN MessageBoxA:PROC

 LOCALS

 INCLUDE SEH.inc

.CODE
 START:

;first of all FAULTS OFF 


;BTW----------------------------------------------------------------------------
;TRY_MSVC  EQU 0   ;uncomment it

IFDEF TRY_MSVC
 ; I've discovered this:
 ; When is program, written in MS Visual C++, run,
 ; MSVCRT??.dll installs top-level exception handler, which
 ; checks if ExceptionCode=0E06D7363H, NumberParameters=3 
 ; and ExceptionInformation[0]=19930520H
 ; Let's try it:
 EXTRN atoi:PROC  ; force library load
 CALL  RaiseException, _msc, EXCEPTION_CONTINUABLE, mscparms, OFFSET mscdate
 _msc           EQU  0E06D7363H
 mscparms       EQU  3
 mscdate        DD   19930520H, ?, ?
ENDIF
;End-of-BTW---------------------------------------------------------------------



;Install 
 Inst_xFrame   xHandler0,  NoxTable, xScopeEnd
 Inst_xFrame   xHandler1,  NoxTable, xScopeEnd
 Inst_xFrame   xHandler2,  NoxTable, xScopeEnd
 Inst_TopLevel TLHandler0, OldTLHandler



 COMMENT @

 What was constructed?

 xFrames:
 xFrameHead -->  xFrame2 --> xFrame1 --> xFrame0 --> KnlxFrame
                 low ESP --                      --> high ESP

 xHandlers:
                          back to the thread
                   
                      ^                      ^
                      |yes                   |yes

                   xHandler2      no     xHandler1           no
  exception --> ACCESS_VIOLATION  --> ACCESS_VIOLATION       -->   ###
                    WRITE ?                READ ?

                   

                   xHandler0      no       Kernel
     ###    -->    BREAKPOINT     -->     xHandler   
                       ?
                      ||yes                  ||
                      \/                     \/
                                   UnhandledExceptionFilter  no
                                      Was set TL handler     -->   ERROR
                                             ?
                                             ||yes
                                  yes        \/              no
                 back to thread   <--     TLHandler0         -->   ERROR
                                           MyxCode
                                              ?

   Of course, all exceptions can be handled by single xHandler too

                                  yes
   ERROR    -->  ErrorMode        -->    ExitProcess
                 =NOGPFAULT             or ExitThread
                    ?
                    ||no                  
                    \/  
                  ErrorBox
                 or DrWatson

 @

;-------------------------------------------------------------------------------


 INT   3       ;breakpoint
 NOP           ;NOP is here because Win95 has DPL of IntGate3 =3
               ;so cx_Eip(NT) will point to INT 3, but cx_Eip(95)
               ;will point to NOP

 @Foo:
 MOV   EAX, DS:01234H  ;access violation read
 SizeOfInstruction EQU $-@Foo

 ;let's make our exception
 CALL  RaiseException, MyxCode, MyxFlags, NumberMyParams, OFFSET MyInfo
               ;cx_Eip points to the next instruction (no need to update)


 MOV   DS:4321H, EAX   ;access violation write

 INT   3
 NOP
;-------------------------------------------------------------------------------

;Restore
 Rest_TopLevel TLHandler0, OldTLHandler
 Rest_xFrame   xHandler2
 Rest_xFrame   xHandler1
 Rest_xFrame   xHandler0

 CALL  MessageBoxA, 0, OFFSET Ended, OFFSET ExitP, 40H


 ; instead of 
 ;CALL  ExitProcess, 0
 ; EliCZ's Escape is here :)
 CALL  SetErrorMode, SEM_NOGPFAULTERRORBOX
 MOV   OldErrorMode, EAX  ; pro forma
 INVD                     ; better than Copperfield
 


;-------------------------------------------------------------------------------
BeginxHandler xHandler0, PxRecord, PxFrame, PxContext, PxDispatch
  MOV   EBX, PxRecord

  TEST  [EBX].ExceptionFlags, UNWIND_STACK
  JNE   @@ToNext
  ;hm.. this should never happen, you can comment those instructions
  ;..but kernel xHandler checks it, so let's check it too for sure

  CMP   [EBX].ExceptionCode, EXCEPTION_BREAKPOINT
  JNE   @@ToNext

  MOV   EBX, PxContext
  MOV   EAX, ExceptionContinueExecution
  INC   [EBX].cx_Eip       ;update EIP

  ;in [EBX].ContextFlags is CONTEXT_ALL
  ;if you want to save CPU time, you can specify only some parts of context
  MOV   [EBX].cx_ContextFlags, CONTEXT_NORMAL
  JMP   @@Return

 @@ToNext:
  MOV   EAX, ExceptionContinueSearch
 @@Return:
  RET
EndxHandler   xHandler0



BeginxHandler xHandler1, PxRecord, PxFrame, PxContext, PxDispatch
  MOV   EBX, PxRecord
  TEST  [EBX].ExceptionFlags, UNWIND_STACK
  JNE   @@ToNext
  CMP   [EBX].ExceptionCode, EXCEPTION_ACCESS_VIOLATION
  JNE   @@ToNext
  CMP   [EBX].ExceptionInformation, ACCESS_VIOLATION_READ
  JNE   @@ToNext

  MOV   EBX, PxContext
  MOV   EAX, ExceptionContinueExecution
  ADD   [EBX].cx_Eip, SizeOfInstruction  ;update EIP
  JMP   @@Return

 @@ToNext:
  MOV   EAX, ExceptionContinueSearch
 @@Return:
  RET
EndxHandler   xHandler1



BeginxHandler xHandler2, PxRecord, PxFrame, PxContext, PxDispatch
  MOV   EBX, PxRecord
  TEST  [EBX].ExceptionFlags, UNWIND_STACK
  JNE   @@ToNext
  CMP   [EBX].ExceptionCode, EXCEPTION_ACCESS_VIOLATION
  JNE   @@ToNext
  CMP   [EBX].ExceptionInformation, ACCESS_VIOLATION_WRITE
  JNE   @@ToNext

  CALL  MessageBoxA, 0, OFFSET Ican, OFFSET Not95, 40H

  MOV   EBX, PxContext
  MOV   EAX, ExceptionContinueExecution
  ADD   [EBX].cx_Eip, SizeOfInstruction ;update EIP
  JMP   @@Return

 @@ToNext:
  MOV   EAX, ExceptionContinueSearch
 @@Return:
  RET
EndxHandler   xHandler2



BeginTopLevelHandler  TLHandler0, PxPointers
  MOV   EAX, PxPointers              ;this is GetExceptionInformation()
  MOV   EBX, [EAX].ExceptionRecord
  MOV   EDX, [EAX].ContextRecord

  MOV   EAX, [EBX].ExceptionCode     ;this is GetExceptionCode()

  CMP   EAX, MyxCode  AND RaisedExceptionCodeMask
                                     ;bit 28 is set to 0 by system
                                     ;for RaisedExceptions
  JE    ItShouldBe                   ;but it's true only for NT
                                      
  CMP   EAX, MyxCode                 ;so it's next bug in Win95
  JNE   @@ToNext

 ItShouldBe:
  MOV   [EDX].cx_ContextFlags, CONTEXT_NORMAL ;save CPU time

  LEA   EAX, [EBX].ExceptionInformation
  CALL  MessageBoxA, 0, EAX, OFFSET RTitle, 30H
  MOV   EAX, EXCEPTION_CONTINUE_EXECUTION
  JMP   @@Return

 @@ToNext:
  MOV   EAX, EXCEPTION_CONTINUE_SEARCH
 @@Return:
  RET
EndTopLevelHandler TLHandler0
  


.DATA

;parameters for RaiseException
MyxCode        EQU  0FDCBA987H
MyxFlags       EQU  EXCEPTION_CONTINUABLE
MyInfo         DB   "It's"
               DB   " my "
               DB   "litt"
               DB   "le e"
               DB   "xcep"
               DB   "tion"
               DD    0000
NumberMyParams EQU  ($-MyInfo)/4


;MessageBoxes
RTitle         DB   "Raise Exception",0

Not95          DB   "This can't be Windows 95",0
Ican           DB   "Because I can distinguish",10
               DB   "READ from WRITE",0

Ended          DB   "Happy End!",0
ExitP          DB   "Escape",0

;Storage
OldTLHandler   DD   ?
OldErrorMode   DD   ?
NoxTable       LABEL DWORD

END  START

:TRANSLATE
@ECHO OFF
TASM /M /Q /T SEHxmpl.bat
TLINK32 /x    SEHxmpl,,,,SEHxmpl
DEL           SEHxmpl.obj