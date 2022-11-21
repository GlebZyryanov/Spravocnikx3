unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TPageControlForm = class(TForm)
    PageControl1: TPageControl;
    tsFiz: TTabSheet;
    tsUr: TTabSheet;
    tsSOTRUD: TTabSheet;
    tsDolj: TTabSheet;
    DBGridFizPC: TDBGrid;
    DBNavigatorFizPC: TDBNavigator;
    DBGridUrPC: TDBGrid;
    DBNavigatorUrPC: TDBNavigator;
    DBGridSOTRUDPC: TDBGrid;
    DBNavigatorSOTRUDPC: TDBNavigator;
    DBGridDoljPC: TDBGrid;
    DBNavigatorDoljPC: TDBNavigator;
    ButtonView: TButton;
    CBTabUr: TDBLookupComboBox;
    ButtonCanselView: TButton;
    ButtonGoView: TButton;
    tsWorkHist: TTabSheet;
    btntsFizWH: TButton;
    btnBackWH: TButton;
    btn2: TButton;
    btnInsert: TButton;
    dbgrdWorkHist: TDBGrid;
    btnCreateWH: TButton;
    btnGOtsWH: TButton;
    btnDeleteWH: TButton;
    dblkcbb1: TDBLookupComboBox;
    procedure ButtonViewClick(Sender: TObject);
    procedure ButtonCanselViewClick(Sender: TObject);
    procedure ButtonGoViewClick(Sender: TObject);
    procedure tsSOTRUDExit(Sender: TObject);
    procedure tsUrExit(Sender: TObject);
    procedure btnBackWHClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCreateWHClick(Sender: TObject);
    procedure btntsFizWHClick(Sender: TObject);
    procedure btnGOtsWHClick(Sender: TObject);
    procedure btnDeleteWHClick(Sender: TObject);
    procedure tsWorkHistExit(Sender: TObject);


    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageControlForm: TPageControlForm;

implementation
uses Unit1;
{$R *.dfm}

procedure TPageControlForm.ButtonViewClick(Sender: TObject);
begin
ButtonCanselView.Visible:=True;
CBTabUr.Visible:=True;
ButtonGoView.Visible:=True;
end;

procedure TPageControlForm.ButtonCanselViewClick(Sender: TObject);
begin
CBTabUr.Visible:=False;
ButtonGoView.Visible:=False;
ButtonCanselView.Visible:=False;
end;

procedure TPageControlForm.ButtonGoViewClick(Sender: TObject);
var
  temp:Integer;
begin
  temp:=CBTabUr.KeyValue;
  MainForm.IBTableSotrud.Filter:= 'IDUR LIKE'+ #39 + '%' + IntToStr(temp)+'%'+#39;
  MainForm.IBTableSotrud.Filtered:=True;
  tsSOTRUD.Show;


end;

procedure TPageControlForm.tsSOTRUDExit(Sender: TObject);
begin
MainForm.IBTableSotrud.Filtered:=False;
end;

procedure TPageControlForm.tsUrExit(Sender: TObject);
begin
 CBTabUr.Visible:=False;
  ButtonGoView.Visible:=False;
  ButtonCanselView.Visible:=False;
end;



procedure TPageControlForm.btnBackWHClick(Sender: TObject);
begin
  dblkcbb1.Visible:=False;
  btnCreateWH.Visible:=False;
  btnGOtsWH.Visible:=False;
  btnBackWH.Visible:=False;
  btnDeleteWH.Visible:=False;
end;

procedure TPageControlForm.btn2Click(Sender: TObject);
begin
 MainForm.IBTableSotrudFIZ_NAME_REWRITE.Text:=MainForm.IBTableSotrudFIZ_NAME.Text;
MainForm.IBTableSotrudUR_NAME_REWRITE.Text:=MainForm.IBTableSotrudUR_NAME.Text;

end;

procedure TPageControlForm.btnInsertClick(Sender: TObject);
begin
MainForm.IBTableSotrud.Append;
DBGridSOTRUDPC.SetFocus;

end;

procedure TPageControlForm.btnCreateWHClick(Sender: TObject);

begin
if(MessageBox(Handle,'Полное обновление может привести к потере данных, содержащихся в ней до этого,Обновить?','Внимание',MB_YESNO)=IDYES) then
  begin

MainForm.ibqry1.Active:=False;
MainForm.ibqry1.SQL.Clear;

MainForm.ibqry1.SQL.Add('INSERT INTO TABLEWORKHIST (UR_NAME, FIZ_NAME, DATE_START, DATE_END)');
MainForm.ibqry1.SQL.Add('SELECT UR_NAME_REWRITE,FIZ_NAME_REWRITE,DATE_WORK_START,DATE_WORK_END');
MainForm.ibqry1.SQL.Add('FROM SOTRUD');
MainForm.ibqry1.ExecSQL;
MainForm.ibqry1.SQL.Text:=('SELECT * FROM TABLEWORKHIST');
MainForm.ibqry1.Active:=True;
  end;  
end;

procedure TPageControlForm.btntsFizWHClick(Sender: TObject);
begin
 dblkcbb1.Visible:=True;
  btnCreateWH.Visible:=True;
  btnBackWH.Visible:=True;
  btnGOtsWH.Visible:=True;
  btnDeleteWH.Visible:=True;
end;

procedure TPageControlForm.btnGOtsWHClick(Sender: TObject);
begin
  tsWorkHist.Show;
 { MainForm.ibqry1.Active:=False;
  MainForm.ibqry1.Filter:='FIZ_NAME LIKE'+ #39 + '%' + dblkcbb1.Text+'%'+#39;
  MainForm.ibqry1.Filtered:=True;
  MainForm.ibqry1.Active:=true;
  }
end;

procedure TPageControlForm.btnDeleteWHClick(Sender: TObject);
begin
  if(MessageBox(Handle,'Это приведет к полному удалению базы по истории трудоустройства,Удалить?','Внимание',MB_YESNO)=IDYES) then
  begin
    MainForm.ibqry1.Active:=False;
  MainForm.ibqry1.SQL.Clear;

  MainForm.ibqry1.SQL.Text:=('DELETE FROM TABLEWORKHIST');
  MainForm.ibqry1.Active:=True;
  end;  
end;

procedure TPageControlForm.tsWorkHistExit(Sender: TObject);
begin
MainForm.ibqry1.Filtered:=False;
end;

end.
