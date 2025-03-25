program FastMM4_StubApp;

{$APPTYPE CONSOLE}

uses
  FastMM4 in 'FastMM4.pas',
  FastMM4Messages in 'FastMM4Messages.pas',
  FastMMRemoteStateInterface in 'FastMMRemoteStateInterface.pas',
  FastMMRemoteStateProvider in 'FastMMRemoteStateProvider.pas',
  FastMMRemoteStateServer in 'FastMMRemoteStateServer.pas',
  FastMMStateProvider in 'FastMMStateProvider.pas';

{$IFDEF DEBUG}
var
  glLeakCounter: integer = 0;

function LeakMethod: Boolean;
begin
  Inc(glLeakCounter);
  Result := glLeakCounter = StackTraceDepth;
  if Result then
    TObject.Create
  else
    Result := LeakMethod;
end;
{$ENDIF}

begin
{$ifdef DetailedMemLeak}
  StackTraceDepth := 41;
{$endif}
  Writeln('FastMM');

{$IFDEF DEBUG}
  LeakMethod;
  ScanMemoryPoolForCorruptions;
{$ENDIF}
end.
