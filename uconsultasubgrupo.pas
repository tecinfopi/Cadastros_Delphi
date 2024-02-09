unit uconsultasubgrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmconsub = class(TForm)
    pnltop: TPanel;
    lblopções: TLabel;
    lbldescricao: TLabel;
    cb: TComboBox;
    Edtpesquisar: TEdit;
    BtnConsultar: TBitBtn;
    dbgrd: TDBGrid;
    stat1: TStatusBar;
    zQRY: TFDQuery;
    DSConsulta: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure dbgrdDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsub: Tfrmconsub;

implementation

uses
  uprincipal;

{$R *.dfm}

procedure Tfrmconsub.BtnConsultarClick(Sender: TObject);
begin
with zQRY do
begin
    Close;
    SQL.Clear;
     case cb.ItemIndex of
     0: begin
         SQL.Add('Select * from subgrupo where codigo = ' + Edtpesquisar.Text);
        end;
     1: begin
         SQL.Add('Select * from subgrupo where nome LIKE ' + QuotedStr( '%' + Edtpesquisar.Text + '%' ));
        end;
     2: begin
        SQL.Add('Select * from subgrupo ');
     end;
     end;
     Open;
     //Label3.Caption := IntToStr(RecordCount);
     if zQRY.RecordCount = 0 then
     ShowMessage('Registro não encontrado....');
    end;
end;

procedure Tfrmconsub.dbgrdDblClick(Sender: TObject);
begin
Frmprincipal.EdtSubGrupo.Text  := dbgrd.Fields[0].Value;
Frmprincipal.EdTDescricao.Text := dbgrd.Fields[1].Value;
frmconsub.Hide;
end;

procedure Tfrmconsub.FormKeyPress(Sender: TObject; var Key: Char);
begin
 //verifica se a tecla pressionada é a tecla ENTER, conhecida pelo Delphi como #13
  If key = #13 then
  Begin
//se for, passa o foco para o próximo campo, zerando o valor da variável Key
  Key:= #0;
  Perform(Wm_NextDlgCtl,0,0);
end;
end;

end.
