unit RepUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, ToolWin, Menus, StdCtrls, Grids, DBGrids, DBCtrls,
  Db, DBTables, Buttons, quickrpt, DBCGrids, Mask, ImgList, AboutUnit;

type
  TFoForm = class(TForm)
    Panel1: TPanel;
    TabControl: TTabControl;
    PageControl: TPageControl;
    AttekintTabSheet: TTabSheet;
    MenetrendTabSheet: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Karbantartas: TMenuItem;
    Lekerdezesek: TMenuItem;
    Kilepes: TMenuItem;
    Panel2: TPanel;
    Beallitasok: TMenuItem;
    PrgBeallit: TMenuItem;
    ToolBeall: TMenuItem;
    StatuszBeall: TMenuItem;
    N2: TMenuItem;
    BeallMentes: TMenuItem;
    PopupMenu1: TPopupMenu;
    IdojarPopup: TMenuItem;
    SzarazPopup: TMenuItem;
    NedvesPopup: TMenuItem;
    SzelesPopup: TMenuItem;
    ViharosPopup: TMenuItem;
    JegesPopup: TMenuItem;
    ToolButton4: TToolButton;
    IdojarasTabSheet: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    FelszallTrackBar: TTrackBar;
    LeszallidoLabel1: TLabel;
    LeszallidoLabel2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel8: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LeszallTrackBar: TTrackBar;
    Panel9: TPanel;
    MenetrendSource: TDataSource;
    MenetrendTable: TTable;
    Panel10: TPanel;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    IranyitoLabel: TLabel;
    ToolButton14: TToolButton;
    MenRendUritBtn: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    MenetrendKarbantart: TMenuItem;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    FelszallVarLabel: TLabel;
    LeszallVarLabel: TLabel;
    UtemezesTabSheet: TTabSheet;
    Panel17: TPanel;
    AktKifutMuvLabel: TLabel;
    UtolsoKifutMuvLabel: TLabel;
    AktKifMuvEdit: TEdit;
    ErkezoSource: TDataSource;
    ErkezoGepTable: TTable;
    Panel18: TPanel;
    MenetrendLabel: TLabel;
    ErkezoSGrid: TStringGrid;
    ErkezoLabel1: TLabel;
    ErkezoLabel2: TLabel;
    ErkezoLabel3: TLabel;
    ErkezoLabel4: TLabel;
    ErkezoLabel5: TLabel;
    Panel19: TPanel;
    MenetrendDBGrid: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    MenetrKarbPanel: TPanel;
    Label9: TLabel;
    MenetrendAdatLabel: TLabel;
    Panel20: TPanel;
    JaratLabel: TLabel;
    IndIdoLabel: TLabel;
    IndIdoMaskEdit: TMaskEdit;
    StatuszLabel: TLabel;
    StatuszComboBox: TComboBox;
    JaratMaskEdit: TMaskEdit;
    JaratDBEdit: TDBEdit;
    IndIdoDBEdit: TDBEdit;
    StatuszDBEdit: TDBEdit;
    ListBox1: TListBox;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    UtemezoSource: TDataSource;
    UtemezoTable: TTable;
    Panel21: TPanel;
    UtemezoGrid: TDBGrid;
    UtemezoKarbLabel: TLabel;
    Panel22: TPanel;
    Label10: TLabel;
    Panel23: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    UtemJaratDBEdit: TDBEdit;
    UtemIdoDBEdit: TDBEdit;
    UtemStatuszDBEdit: TDBEdit;
    UtemStatuszComboBox: TComboBox;
    Label14: TLabel;
    UtemTipDBEdit: TDBEdit;
    InduloSGrid: TStringGrid;
    About1: TMenuItem;
    UjGepPanel: TPanel;
    UjErkezoButton: TButton;
    UjInduloButton: TButton;
    UjErkezoGep: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolBeallClick(Sender: TObject);
    procedure StatuszBeallClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure MenetrendKarbantartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IndIdoDBEditChange(Sender: TObject);
    procedure StatuszDBEditChange(Sender: TObject);
    procedure IndIdoMaskEditChange(Sender: TObject);
    procedure StatuszComboBoxChange(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure IndIdoMaskEditExit(Sender: TObject);
    procedure StatuszComboBoxExit(Sender: TObject);
    procedure JaratDBEditChange(Sender: TObject);
    procedure JaratMaskEditChange(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure MenRendUritBtnClick(Sender: TObject);
    procedure JaratMaskEditExit(Sender: TObject);
    procedure UtemStatuszDBEditChange(Sender: TObject);
    procedure UtemStatuszComboBoxChange(Sender: TObject);
    procedure UtemStatuszComboBoxExit(Sender: TObject);
    procedure UtemStatuszComboBoxEnter(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure UjErkezoButtonClick(Sender: TObject);
    procedure UjErkezoGepClick(Sender: TObject);
  private
    Valtozas  : Boolean;
    EgeszIdo  : Boolean;
    RegiText  : String;
    Function Ido : String;
    Procedure ListBoxBaMent;
    Procedure UtemezoKeszit;
    Procedure Frissit;
  public
    Function Kozepre(I : Byte; S : String) : String;
  end;

Const Uzenet : String = ' Üzenet: ';

var FoForm    : TFoForm;
    Szamlalo  : Byte;
    Inditas   : Boolean;
    JoIndIdo  : Boolean;
    BeAbout   : TAboutBox;

implementation

uses UjErkezoUnit;

{$R *.DFM}

Function TFoForm.Ido;
Var IdoS : String;
Begin
     Ido:='';
     IdoS:=TimeToStr(Time);
     If IdoS[2] = ':' Then Delete(IdoS,5,7)
        Else Delete(IdoS,6,8);
     Ido:=IdoS+' - ';
End;

Procedure TFoForm.ListBoxBaMent;
Begin
     ListBox1.Items.Add(Ido+AktKifMuvEdit.Text);
     AktKifMuvEdit.Text:='';
End;

Function TFoForm.Kozepre;
Var Hossz, UjHossz,Egyhossz, J : Byte;
Begin
     FoForm.ErkezoSGrid.Canvas.Font.Size:=FoForm.ErkezoSGrid.Font.Size;
     Hossz:=FoForm.ErkezoSGrid.Canvas.TextWidth(s);
     UjHossz:=(FoForm.ErkezoSGrid.ColWidths[I]-Hossz) Div 2;
     Egyhossz:=FoForm.ErkezoSGrid.Canvas.Textwidth(' ');
     UjHossz:=UjHossz div Egyhossz;
     For J:=1 To UjHossz Do Insert(' ',S,1);
     Kozepre:=S;
End;

Procedure TFoForm.UtemezoKeszit;
Begin
     UtemezoTable.Close;
     UtemezoTable.Active:=False;
     UtemezoTable.DatabaseName:='utemezo';
     UtemezoTable.TableName:='utemezo';
     UtemezoTable.TableType:=ttDBase;
     UtemezoTable.EmptyTable;
     If (Not UtemezoTable.Active) Then UtemezoTable.Active:=True;
     UtemezoTable.Open;
     With MenetrendTable Do
     Begin
          First;
          While (Not EOF) Do
          Begin
               If (FieldByName('STATUS').AsString <> 'törölve') Then
               Begin
                    UtemezoTable.Insert;
                    UtemezoTable.FieldByName('JARATSZAM').AsString:=FieldByName('JARATSZAM').AsString;
                    UtemezoTable.FieldByName('IDO').AsString:=FieldByName('INDIDO').AsString;
                    UtemezoTable.FieldByName('STATUSZ').AsString:=FieldByName('STATUS').AsString;
                    If (UtemezoTable.FieldByName('STATUSZ').AsString = 'normál') Then
                       UtemezoTable.FieldByName('PRIOR').AsString:='2';
                    If (UtemezoTable.FieldByName('STATUSZ').AsString = 'késik') Then
                       UtemezoTable.FieldByName('PRIOR').AsString:='3';
                    If (UtemezoTable.FieldByName('STATUSZ').AsString = 'törölve') Then
                       UtemezoTable.FieldByName('PRIOR').AsString:='4';
                    UtemezoTable.FieldByName('LEFEL').AsString:='induló';
                    UtemezoTable.FieldByName('UZEMANYAG').AsString:='';
                    UtemezoTable.Post;
               End;
               Next;
          End;
     End;
     With ErkezoGepTable Do
     Begin
          First;
          While (Not EOF) Do
          Begin
               UtemezoTable.Insert;
               UtemezoTable.FieldByName('JARATSZAM').AsString:=FieldByName('JARATSZAM').AsString;
               UtemezoTable.FieldByName('IDO').AsString:=FieldByName('ERKIDO').AsString;
               UtemezoTable.FieldByName('STATUSZ').AsString:=FieldByName('STATUSZ').AsString;
               If (UtemezoTable.FieldByName('STATUSZ').AsString = 'vészhelyzet') Then
                  UtemezoTable.FieldByName('PRIOR').AsString:='1';
               If (UtemezoTable.FieldByName('STATUSZ').AsString = 'normál') Then
                  UtemezoTable.FieldByName('PRIOR').AsString:='2';
               UtemezoTable.FieldByName('LEFEL').AsString:='érkezõ';
               UtemezoTable.FieldByName('UZEMANYAG').AsString:=FieldByName('UZEMANYAG').AsString;
               UtemezoTable.Post;
               Next;
          End;
     End;
End;

Procedure TFoForm.Frissit;
Var  IX,IY,EX,EY : Byte;
     Bookmark1   : TBookmark;
     STime       : String;
     SegedTime   : String;
     HatraTime   : String;
     STipus      : String;
     ETime       : TDateTime;
     MTime       : TDateTime;
     UTime       : TDateTime;
     ErkezTorles : Boolean;
Begin
     With FoForm Do
     Begin
          Bookmark1:=UtemezoTable.GetBookmark;
          STime:=TimeToStr(Time);
          If STime[2] = ':' Then
          Begin
               Delete(STime,5,7);
               STime:='0'+STime;
          End
          Else Delete(STime,6,8);
          With UtemezoTable Do
          Try
             IX:=0;
             IY:=0;
             EX:=0;
             EY:=0;
             InduloSGrid.RowCount:=0;
             ErkezoSGrid.RowCount:=0;
             First;
             While (Not EOF) Do
             Begin
                  ErkezTorles:=False;
                  If (FieldByName('LEFEL').AsString = 'induló') Then
                  Begin
                       If (STime = FieldByName('IDO').AsString) Then
                       Begin
                            If (AktKifMuvEdit.Text <> '') Then ListBoxBaMent;
                            If (FieldByName('LEFEL').AsString = 'induló') Then STipus:=' felszállt.';
                            If (FieldByName('LEFEL').AsString = 'érkezõ') Then STipus:=' leszállt.';
                            AktKifMuvEdit.Text:='a '+FieldByName('JARATSZAM').AsString+
                                ' számú járat'+STipus;
                            Delete;
                       End
                       Else
                       Begin
                            InduloSGrid.Cells[IX,IY]:=FieldByName('JARATSZAM').AsString;
                            InduloSGrid.Cells[IX+1,IY]:=Kozepre(1,FieldByName('IDO').AsString);
                            InduloSGrid.Cells[IX+2,IY]:=Kozepre(2,FieldByName('STATUSZ').AsString);
                            Inc(IY);
                            InduloSGrid.RowCount:=InduloSGrid.RowCount+1;
                            Next;
                       End;
                  End;

                  If (FieldByName('LEFEL').AsString = 'érkezõ') Then
                  Begin
                       MTime:=StrToTime(STime);
                       ETime:=StrToTime(FieldByName('IDO').AsString);
                       If (Not Inditas) And (EgeszIdo) Then
                       Begin
                            UTime:=StrToTime(FieldByName('UZEMANYAG').AsString);
                            UTime:=UTime-StrToTime('00:01');
                            SegedTime:=TimeToStr(UTime);
                            If SegedTime[2] = ':' Then System.Delete(SegedTime,5,7)
                              Else System.Delete(SegedTime,6,8);
                            Edit;
                            If SegedTime = '0:00' Then
                            Begin
                                 StatusBar1.Panels[0].Text:=StatusBar1.Panels[0].Text+' A(z) '+
                                          FieldByName('JARATSZAM').AsString+' járat lezuhant!'+
                                          '  - vesztettél!  :)))';
                                 ErkezTorles:=True;
                            End
                            Else FieldByName('UZEMANYAG').AsString:=SegedTime;
                       End;

                       If ErkezTorles Then
                       Begin
                            ErkezoGepTable.IndexName:='JARATSZAM';
                            If ErkezoGepTable.FindKey([FieldByName('JARATSZAM').AsString])
                               Then ErkezoGepTable.Delete;
                            ErkezoGepTable.IndexName:='ERKIDO';
                            UtemezoTable.Delete;
                       End
                       Else
                       Begin
                            If (STime = FieldByName('IDO').AsString) Then
                            Begin
                                 If (AktKifMuvEdit.Text <> '') Then ListBoxBaMent;
                                 STipus:=' leszállt.';
                                 AktKifMuvEdit.Text:='a '+FieldByName('JARATSZAM').AsString+
                                     ' számú járat'+STipus;
                                 ErkezoGepTable.IndexName:='JARATSZAM';
                                 If ErkezoGepTable.FindKey([FieldByName('JARATSZAM').AsString])
                                    Then ErkezoGepTable.Delete;
                                 ErkezoGepTable.IndexName:='ERKIDO';
                                 Delete;
                                 Refresh;
                            End
                            Else
                            Begin
                                 MTime:=ETime-MTime;
                                 HatraTime:=TimeToStr(MTime);
                                 If HatraTime[2] = ':' Then System.Delete(HatraTime,5,7)
                                    Else System.Delete(HatraTime,6,8);
                                 ErkezoSGrid.Cells[EX,EY]:=FieldByName('JARATSZAM').AsString;
                                 ErkezoSGrid.Cells[EX+1,EY]:=Kozepre(1,FieldByName('IDO').AsString);
                                 ErkezoSGrid.Cells[EX+2,EY]:=Kozepre(2,FieldByName('UZEMANYAG').AsString);
                                 ErkezoSGrid.Cells[EX+3,EY]:=Kozepre(3,FieldByName('STATUSZ').AsString);
                                 ErkezoSGrid.Cells[EX+4,EY]:=Kozepre(4,HatraTime);
                                 Inc(EY);
                                 ErkezoSGrid.RowCount:=ErkezoSGrid.RowCount+1;
                                 Next;
                            End;
                       End;
                  End;
             End;
          Finally
                 GotoBookmark(Bookmark1);
                 FreeBookmark(Bookmark1);
          End;
          InduloSGrid.RowCount:=InduloSGrid.RowCount-1;
          ErkezoSGrid.RowCount:=ErkezoSGrid.RowCount-1;
     End;
End;

procedure TFoForm.Timer1Timer(Sender: TObject);
Var Ora,Perc,MPerc,SzPerc : Word;
begin
     StatusBar1.Panels[1].Text:=' Idõ : ' + TimeToStr(Time);
     DecodeTime(Now,Ora,Perc,MPerc,SzPerc);
     If MPerc = 0 Then
     Begin
          EgeszIdo:=True;
          Frissit;
          EgeszIdo:=False;
     End;
     If MPerc = 30 Then
     Begin
          StatusBar1.Panels[0].Text:=Uzenet;
          If (AktKifMuvEdit.Text <> '') Then ListBoxBaMent;
     End;
end;

procedure TFoForm.ToolButton1Click(Sender: TObject);
begin
     ErkezoGepTable.Close;
     UtemezoTable.Close;
     UtemezoTable.Active:=False;
     UtemezoTable.DatabaseName:='utemezo';
     UtemezoTable.TableName:='utemezo';
     UtemezoTable.TableType:=ttDBase;
     UtemezoTable.EmptyTable;
     Close;
end;

procedure TFoForm.ToolBeallClick(Sender: TObject);
begin
     ToolBar1.Visible:=Not ToolBar1.Visible;
     ToolBeall.Checked:=ToolBar1.Visible;
end;

procedure TFoForm.StatuszBeallClick(Sender: TObject);
begin
     StatusBar1.Visible:=Not StatusBar1.Visible;
     StatuszBeall.Checked:=StatusBar1.Visible;
end;

procedure TFoForm.ToolButton5Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.First;
end;

procedure TFoForm.ToolButton6Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Last;
end;

procedure TFoForm.ToolButton7Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Prior;
end;

procedure TFoForm.ToolButton8Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Next;
end;

procedure TFoForm.ToolButton9Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Insert;
end;

procedure TFoForm.ToolButton10Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Delete;
end;

procedure TFoForm.ToolButton11Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Edit;
end;

procedure TFoForm.ToolButton12Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Refresh;
end;

procedure TFoForm.ToolButton13Click(Sender: TObject);
begin
     If MenetrendTable.Active Then
     Begin
          MenetrendTable.Edit;
          MenetrendTable.Post;
     End;
end;

procedure TFoForm.ToolButton14Click(Sender: TObject);
begin
     If MenetrendTable.Active Then MenetrendTable.Cancel;
end;

procedure TFoForm.MenetrendKarbantartClick(Sender: TObject);
begin
     PageControl.ActivePage:=MenetrendTabSheet;
     MenetrendDBGrid.SetFocus;
end;

procedure TFoForm.FormCreate(Sender: TObject);
begin
     MenetrendTable.Open;
     ErkezoGepTable.Open;
     UtemezoTable.Open;
     PageControl.ActivePage:=AttekintTabSheet;
     FelszallTrackBar.Position:=5;
     LeszallTrackBar.Position:=5;
     Timer1.Interval:=1000;
     Szamlalo:=59;
     InduloSGrid.RowCount:=0;
     InduloSGrid.ColWidths[0]:=60;
     InduloSGrid.ColWidths[1]:=70;
     InduloSGrid.ColWidths[2]:=100;
     ErkezoSGrid.RowCount:=0;
     ErkezoSGrid.ColWidths[0]:=80;
     ErkezoSGrid.ColWidths[1]:=63;
     ErkezoSGrid.ColWidths[2]:=72;
     ErkezoSGrid.ColWidths[3]:=100;
     ListBox1.Items.Clear;
     ListBox1.Items.Add(Ido+'a rendszer elindult!');
     Valtozas:=False;
     UtemezoKeszit;
     Inditas:=True;
     EgeszIdo:=False;
     Frissit;
     Inditas:=False;
     StatusBar1.Panels[0].Text:=Uzenet;
end;

procedure TFoForm.JaratDBEditChange(Sender: TObject);
begin
     JaratMaskEdit.Text:=JaratDBEdit.Text;
end;

procedure TFoForm.IndIdoDBEditChange(Sender: TObject);
begin
     IndIdoMaskEdit.Text:=IndIdoDBEdit.Text;
end;

procedure TFoForm.StatuszDBEditChange(Sender: TObject);
begin
     StatuszComboBox.Text:=StatuszDBEdit.Text;
end;

procedure TFoForm.JaratMaskEditChange(Sender: TObject);
begin
     MenetrendTable.Edit;
     JaratDBEdit.Text:=JaratMaskEdit.Text;
     MenetrendTable.Edit;
     MenetrendTable.Post;
end;

procedure TFoForm.StatuszComboBoxChange(Sender: TObject);
begin
     MenetrendTable.Edit;
     StatuszDBEdit.Text:=StatuszComboBox.Text;
     MenetrendTable.Post;
end;

procedure TFoForm.IndIdoMaskEditChange(Sender: TObject);
Var Ora   : String;
    Perc  : String;
    Num,C : Integer;
begin
     JoIndIdo:=False;
     Ora:=IndIdoMaskEdit.Text[1]+IndIdoMaskEdit.Text[2];
     Perc:=IndIdoMaskEdit.Text[4]+IndIdoMaskEdit.Text[5];
     Val(Ora,Num,C);
     If Num In [0..23] Then
     Begin
          Val(Perc,Num,C);
          If Num In [0..59] Then JoIndIdo:=True;
     End;
     If JoIndIdo Then
     Begin
          MenetrendTable.Edit;
          IndIdoDBEdit.Text:=IndIdoMaskEdit.Text;
          MenetrendTable.Post;
     End;
end;

procedure TFoForm.PageControlChange(Sender: TObject);
begin
     If (PageControl.ActivePage = MenetrendTabSheet) Then MenetrendDBGrid.SetFocus;
     If (PageControl.ActivePage = UtemezesTabSheet) Then UtemezoGrid.SetFocus;
end;

procedure TFoForm.IndIdoMaskEditExit(Sender: TObject);
begin
     If (Not JoIndIdo) Then IndIdoMaskEdit.SetFocus;
end;

procedure TFoForm.StatuszComboBoxExit(Sender: TObject);
Var JoStatusz : Boolean;
begin
     JoStatusz:=False;
     If (StatuszComboBox.Text = StatuszComboBox.Items.Strings[0]) Or
        (StatuszComboBox.Text = StatuszComboBox.Items.Strings[1]) Or
        (StatuszComboBox.Text = StatuszComboBox.Items.Strings[2])Then JoStatusz:=True;
     If (Not JoStatusz) Then
     Begin
          Beep;
          StatuszComboBox.SetFocus;
     End;
end;

procedure TFoForm.ToolButton2Click(Sender: TObject);
begin
     If MessageDlg('Valóban új napot kíván kezdeni?',
        mtConfirmation,[mbYes,mbNo],0) = idYes Then
     Begin
          ListBox1.Items.Clear;
          ListBox1.Items.Add(Ido+'a rendszer elindult!');
          UtemezoKeszit;
          EgeszIdo:=False;
          Frissit;
     End;
end;

procedure TFoForm.MenRendUritBtnClick(Sender: TObject);
begin
     If MessageDlg('Valóban törölni akarja a menetrend tartalmát?',
        mtConfirmation,[mbYes,mbNo],0) = idYes Then
     Begin
          MenetrendTable.Close;
          MenetrendTable.Active:=False;
          MenetrendTable.DatabaseName:='menetrend';
          MenetrendTable.TableName:='menrend';
          MenetrendTable.TableType:=ttDBase;
          MenetrendTable.EmptyTable;
          MenetrendTable.Active:=True;
          MenetrendTable.Open;
     End;
end;

procedure TFoForm.JaratMaskEditExit(Sender: TObject);
Var I    : Byte;
    Szov : String;
begin
     Szov:=JaratMaskEdit.Text;
     For I:=1 To Length(Szov) Do Szov[I]:=UpCase(Szov[I]);
     JaratMaskEdit.Text:=Szov;
end;

procedure TFoForm.UtemStatuszDBEditChange(Sender: TObject);
begin
     UtemStatuszComboBox.Text:=UtemStatuszDBEdit.Text;
end;

procedure TFoForm.UtemStatuszComboBoxChange(Sender: TObject);
begin
     UtemezoTable.Edit;
     UtemStatuszDBEdit.Text:=UtemStatuszComboBox.Text;
     UtemezoTable.Post;
end;

procedure TFoForm.UtemStatuszComboBoxExit(Sender: TObject);
Var JoStatusz : Boolean;
begin
     JoStatusz:=False;
     If (UtemStatuszComboBox.Text = UtemStatuszComboBox.Items.Strings[0]) Or
        (UtemStatuszComboBox.Text = UtemStatuszComboBox.Items.Strings[1]) Or
        (UtemStatuszComboBox.Text = UtemStatuszComboBox.Items.Strings[2]) Or
        (UtemStatuszComboBox.Text = UtemStatuszComboBox.Items.Strings[3])Then
     Begin
          JoStatusz:=True;
          If RegiText <> UtemStatuszComboBox.Text Then
          Begin
               EgeszIdo:=False;
               Frissit;
          End;
     End;
     If (Not JoStatusz) Then UtemStatuszComboBox.SetFocus;
end;

procedure TFoForm.UtemStatuszComboBoxEnter(Sender: TObject);
begin
     RegiText:=UtemStatuszComboBox.Text;
     With UtemezoTable Do
     Begin
          If (FieldByName('LEFEL').AsString = 'induló') Then
          Begin
               UtemStatuszComboBox.Items.Clear;
               UtemStatuszComboBox.Items.Strings[0]:='normál';
               UtemStatuszComboBox.Items.Strings[1]:='késik';
          End;
          If (FieldByName('LEFEL').AsString = 'érkezõ') Then
          Begin
               UtemStatuszComboBox.Items.Clear;
               UtemStatuszComboBox.Items.Strings[0]:='vészhelyzet';
               UtemStatuszComboBox.Items.Strings[1]:='normál';
          End;
          //FieldByName('PRIOR').AsString:='2'
     End;
end;

procedure TFoForm.About1Click(Sender: TObject);
begin
     If (Not Assigned (AboutBox)) Then AboutBox:=TAboutBox.Create(Application);
     AboutBox.Bezar;
     AboutBox.ShowModal;
end;

procedure TFoForm.UjErkezoButtonClick(Sender: TObject);
begin
     UjErkezoDialog.ActiveControl:=UjErkezoDialog.JaratMaskEdit;
     UjErkezoDialog.ShowModal;
     If VanUj Then
     Begin
          With ErkezoGepTable Do
          Begin
               Insert;
               Edit;
               FieldByName('JARATSZAM').AsString:=ErkezoMunka.JaratSz;
               FieldByName('ERKIDO').AsString:=ErkezoMunka.ErkIdo;
               FieldByName('STATUSZ').AsString:=ErkezoMunka.Statusz;
               FieldByName('UZEMANYAG').AsString:=ErkezoMunka.Uzemanyag;
               Post;
               Refresh;
          End;
          With UtemezoTable Do
          Begin
               Insert;
               Edit;
               FieldByName('JARATSZAM').AsString:=ErkezoMunka.JaratSz;
               FieldByName('IDO').AsString:=ErkezoMunka.ErkIdo;
               FieldByName('STATUSZ').AsString:=ErkezoMunka.Statusz;
               FieldByName('PRIOR').AsString:=ErkezoMunka.Prior;
               FieldByName('LEFEL').AsString:='érkezõ';
               FieldByName('UZEMANYAG').AsString:=ErkezoMunka.Uzemanyag;
               Post;
               Refresh;
          End;
          EgeszIdo:=False;
          Frissit;
     End;
end;

procedure TFoForm.UjErkezoGepClick(Sender: TObject);
begin
     UjErkezoButtonClick(Self);
end;

end.

