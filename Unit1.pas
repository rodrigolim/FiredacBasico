unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, Data.DB, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, Datasnap.DBClient, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    QRY: TFDQuery;
    DTS: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    QRYCLI_ID: TStringField;
    QRYCLI_NOME: TStringField;
    CDSCLI_ID: TStringField;
    CDSCLI_NOME: TStringField;
    QRYCLI_CIDADE: TStringField;
    CDSCLI_CIDADE: TStringField;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_DM;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DM.ExecuteSQL('UPDATE CLIENTES SET CLI_CIDADE = ''TESTE'' WHERE CLI_ID = 1 ',[]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  CDS.Close;
  CDS.Open;
end;

end.
