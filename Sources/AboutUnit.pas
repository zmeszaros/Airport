unit AboutUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    KezdoKep: TImage;
    Procedure Keszit;
    Procedure Bezar;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var AboutBox: TAboutBox;

implementation

{$R *.DFM}

Procedure TAboutBox.Keszit;
Begin
     Width:=700;
     Height:=500;
     BorderStyle:=bsNone;
     OkButton.Visible:=False;
     //Panel1.BorderWidth:=3;
     Panel1.Visible:=False;
     KezdoKep.Enabled:=True;
     KezdoKep.Visible:=True;
     KezdoKep.Align:=alClient;
     Show;
     UpDate;
End;

Procedure TAboutBox.Bezar;
Begin
     Width:=300;
     Height:=240;
     KezdoKep.Visible:=False;
     KezdoKep.Enabled:=False;
     BorderStyle:=bsDialog;
     OKButton.Visible:=True;
     Panel1.Visible:=True;
End;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
     Close;
end;

end.
 
