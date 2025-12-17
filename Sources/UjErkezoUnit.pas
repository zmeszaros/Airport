unit UjErkezoUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls, Dialogs;

type
  TUjErkezoDialog = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    FelvitelPanel: TPanel;
    StatuszComboBox: TComboBox;
    JaratMaskEdit: TMaskEdit;
    ErkIdoMaskEdit: TMaskEdit;
    UzemanyagMaskEdit: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StatuszComboBoxExit(Sender: TObject);
    procedure JaratMaskEditExit(Sender: TObject);
    procedure ErkIdoMaskEditExit(Sender: TObject);
    procedure ErkIdoMaskEditChange(Sender: TObject);
    procedure UzemanyagMaskEditChange(Sender: TObject);
    procedure UzemanyagMaskEditExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    JoJaratszam    : Boolean;
    JoErkIdo       : Boolean;
    JoUzemanyagIdo : Boolean;
    JoStatusz      : Boolean;
    Procedure Urit;
  public
    { Public declarations }
  end;

  TErkezoMunka = Record
     JaratSz   : String[6];
     ErkIdo    : String[5];
     Statusz   : String[11];
     Prior     : String[1];
     Uzemanyag : String[5];
  End;

Var UjErkezoDialog : TUjErkezoDialog;
    VanUj          : Boolean;
    ErkezoMunka    : TErkezoMunka;

implementation

{$R *.DFM}

Procedure TUjErkezoDialog.Urit;
Begin
     JaratMaskEdit.Text:='';
     ErkIdoMaskEdit.Text:='';
     StatuszComboBox.Text:='';
     UzemanyagMaskEdit.Text:='';
     JoJaratszam:=False;
     JoErkIdo:=False;
     JoUzemanyagIdo:=False;
     JoStatusz:=False;
End;

procedure TUjErkezoDialog.CancelBtnClick(Sender: TObject);
begin
     Urit;
     VanUj:=False;
     Close;
end;

procedure TUjErkezoDialog.OKBtnClick(Sender: TObject);
Var MostIdoS   : String;
    IdoKulonbS : String;
    IdoKulonbT : TdateTime;
begin
     With ErkezoMunka Do
     Begin
          JaratSz:=JaratMaskEdit.Text;
          ErkIdo:=ErkIdoMaskEdit.Text;
          Statusz:=StatuszComboBox.Text;
          If (Statusz = 'normál') Then Prior:='2';
          If (Statusz = 'vészhelyzet') Then Prior:='1';
          Uzemanyag:=UzemanyagMaskEdit.Text;
          If (Uzemanyag[3] <> ':') Then Insert('0',Uzemanyag,1);
     End;
     If (JoJaratszam) And (JoErkIdo) And (JoUzemanyagIdo) And (JoStatusz) Then VanUj:=True
        Else VanUj:=False;
     If VanUj Then
     Begin
          MostIdoS:='';
          MostIdoS:=TimeToStr(Time);
          If (MostIdoS[2] = ':') Then Delete(MostIdoS,5,7)
             Else Delete(MostIdoS,6,8);
          IdoKulonbT:=StrToTime(MostIdoS)-StrToTime(ErkezoMunka.ErkIdo);
          IdoKulonbS:=TimeToStr(IdoKulonbT);
          If (IdoKulonbS[3] <> ':') Then Insert('0',IdoKulonbS,1);
          Delete(IdoKulonbS,6,8);
          If (StrToTime(ErkezoMunka.Uzemanyag) < StrToTime(IdoKulonbS)) Then
          Begin
               MessageDlg('Az üzemanyag nem elegendõ a leszállásig,'+
               #13'ezért a gép elutasítva!',mtConfirmation,[mbOK],0);
               VanUj:=False;
          End
          Else If (ErkezoMunka.Uzemanyag[1] = '0') Then Delete(ErkezoMunka.Uzemanyag,1,1);
     End;
     Urit;
     Close;
end;

procedure TUjErkezoDialog.FormCreate(Sender: TObject);
begin
     VanUj:=False;
     ActiveControl:=JaratMaskEdit;
     With ErkezoMunka Do
     Begin
          JaratSz:='';
          ErkIdo:='';
          Statusz:='';
          Prior:='';
          Uzemanyag:='';
     End;
end;

procedure TUjErkezoDialog.StatuszComboBoxExit(Sender: TObject);
begin
     JoStatusz:=False;
     If (StatuszComboBox.Text = StatuszComboBox.Items.Strings[0]) Or
        (StatuszComboBox.Text = StatuszComboBox.Items.Strings[1]) Then JoStatusz:=True;
     If (Not JoStatusz) Then
     Begin
          Beep;
          StatuszComboBox.SetFocus;
     End
     Else JoStatusz:=True;
end;

procedure TUjErkezoDialog.JaratMaskEditExit(Sender: TObject);
Var I    : Byte;
    Szov : String;
begin
     Szov:=JaratMaskEdit.Text;
     For I:=1 To Length(Szov) Do Szov[I]:=UpCase(Szov[I]);
     JaratMaskEdit.Text:=Szov;
     JoJaratszam:=True;
end;

procedure TUjErkezoDialog.ErkIdoMaskEditExit(Sender: TObject);
begin
     If (Not JoErkIdo) Then ErkIdoMaskEdit.SetFocus;
end;

procedure TUjErkezoDialog.ErkIdoMaskEditChange(Sender: TObject);
Var Ora   : String;
    Perc  : String;
    Num,C : Integer;
begin
     JoErkIdo:=False;
     Ora:=ErkIdoMaskEdit.Text[1]+ErkIdoMaskEdit.Text[2];
     Perc:=ErkIdoMaskEdit.Text[4]+ErkIdoMaskEdit.Text[5];
     Val(Ora,Num,C);
     If Num In [0..23] Then
     Begin
          Val(Perc,Num,C);
          If Num In [0..59] Then JoErkIdo:=True;
     End;
end;

procedure TUjErkezoDialog.UzemanyagMaskEditChange(Sender: TObject);
Var Ora   : String;
    Perc  : String;
    Num,C : Integer;
begin
     JoUzemanyagIdo:=False;
     Ora:=UzemanyagMaskEdit.Text[1]+UzemanyagMaskEdit.Text[2];
     Perc:=UzemanyagMaskEdit.Text[4]+UzemanyagMaskEdit.Text[5];
     Val(Ora,Num,C);
     If Num In [0..23] Then
     Begin
          Val(Perc,Num,C);
          If Num In [0..59] Then JoUzemanyagIdo:=True;
     End;
end;

procedure TUjErkezoDialog.UzemanyagMaskEditExit(Sender: TObject);
begin
     If (Not JoUzemanyagIdo) Then UzemanyagMaskEdit.SetFocus;
end;

procedure TUjErkezoDialog.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #27) Then
     Begin
          Key:=#0;
          CancelBtnClick(Self);
     End;
end;

end.
