program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit6 in 'Unit6.pas' {PageControlForm};

{$R *.res}


begin
  Application.Initialize;
  Application.CreateForm(TPageControlForm, PageControlForm);
  Application.CreateForm(TMainForm, MainForm);
  //Application.CreateForm(TSotrudForm, SotrudForm);

  Application.Run;
end.