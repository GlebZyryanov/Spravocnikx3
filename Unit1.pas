unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, DB, IBCustomDataSet, IBTable, IBDatabase,
  IBQuery;

type
  TMainForm = class(TForm)

    MainDB: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTableDoljnost: TIBTable;
    DataSourceFiz: TDataSource;
    IBTableFiz: TIBTable;
    IBTableUR: TIBTable;
    DataSourceUR: TDataSource;
    DataSourceSOTRUD: TDataSource;
    DataSourceDoljnosti: TDataSource;
    IBTableDoljnostID_DOLJ: TIntegerField;
    IBTableDoljnostNAME_DOLJ: TIBStringField;
    IBTableFizID_FIZ: TIntegerField;
    IBTableFizFIO: TIBStringField;
    IBTableFizDATE_BIRTH: TIBStringField;
    IBTableFizNUMBER_PERSONAL: TIBStringField;
    IBTableFizINN: TIBStringField;
    IBTableSotrud: TIBTable;
    IBTableSotrudID_SOTR: TIntegerField;
    IBTableSotrudIDUR: TIntegerField;
    IBTableSotrudIDFIZ: TIntegerField;
    IBTableSotrudIDDOLJ: TIntegerField;
    IBTableSotrudDATE_WORK_START: TIBStringField;
    IBTableSotrudDATE_WORK_END: TIBStringField;
    IBTableSotrudWORKPHONE_NUMBER: TIBStringField;
    IBTableURID_UR: TIntegerField;
    IBTableURNAME_L: TIBStringField;
    IBTableURNAME_S: TIBStringField;
    IBTableUROGRN: TIBStringField;
    IBTableURINN: TIBStringField;
    IBTableURKPP: TIBStringField;
    IBTableSotrudUR_NAME: TIBStringField;
    IBTableSotrudFIZ_NAME: TIBStringField;
    IBTableSotrudD_NAME: TIBStringField;
    ibqry1: TIBQuery;
    dsWorkHist: TDataSource;
    IBTableSotrudUR_NAME_REWRITE: TIBStringField;
    IBTableSotrudFIZ_NAME_REWRITE: TIBStringField;
    intgrfldibqry1ID_WH: TIntegerField;
    intgrfldibqry1ID_FIZ: TIntegerField;
    intgrfldibqry1ID_DATE_START: TIntegerField;
    intgrfldibqry1ID_DATE_END: TIntegerField;
    ibqry1UR_NAME: TIBStringField;
    ibqry1FIZ_NAME: TIBStringField;
    ibqry1DATE_START: TIBStringField;
    ibqry1DATE_END: TIBStringField;
    procedure FormCreate(Sender: TObject);


   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation
uses Unit6;
{$R *.dfm}


procedure TMainForm.FormCreate(Sender: TObject);
begin
MainForm.ibqry1.Active:=True;
  PageControlForm.dblkcbb1.Visible:=False;
  PageControlForm.btnCreateWH.Visible:=False;
  PageControlForm.btnGOtsWH.Visible:=False;
  PageControlForm.btnBackWH.Visible:=False;
  PageControlForm.btnDeleteWH.Visible:=False;
end;



end.
