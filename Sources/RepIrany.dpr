program RepIrany;

uses
  Forms,
  RepUnit in 'RepUnit.pas' {FoForm},
  AboutUnit in 'AboutUnit.pas' {AboutBox},
  UjErkezoUnit in 'UjErkezoUnit.pas' {UjErkezoDialog};

{$R *.RES}

Var BeAbout : TAboutBox;

begin
  Application.Initialize;
  BeAbout:=TaboutBox.Create(Application);
  Try
     BeAbout.Keszit;
     Application.CreateForm(TFoForm, FoForm);
  Application.CreateForm(TUjErkezoDialog, UjErkezoDialog);
  BeAbout.Close;
  Finally
     BeAbout.Free;
  End;
  Application.Run;
end.
