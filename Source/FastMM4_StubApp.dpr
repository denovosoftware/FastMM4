program FastMM4_StubApp;

{$APPTYPE CONSOLE}

uses
  FastMM4 in 'FastMM4.pas',
  FastMM4Messages in 'FastMM4Messages.pas',
  FastMMRemoteStateInterface in 'FastMMRemoteStateInterface.pas',
  FastMMRemoteStateProvider in 'FastMMRemoteStateProvider.pas',
  FastMMRemoteStateServer in 'FastMMRemoteStateServer.pas',
  FastMMStateProvider in 'FastMMStateProvider.pas';

begin
  Writeln('FastMM');
end.
