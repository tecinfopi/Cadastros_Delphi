unit urelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, dxGDIPlusClasses;

type
  Tfrmrelatorio = class(TForm)
    Relgrupos: TRLReport;
    rlbndtop: TRLBand;
    img1: TRLImage;
    rlbl1: TRLLabel;
    rlbl2: TRLLabel;
    rlbl3: TRLLabel;
    rlbl4: TRLLabel;
    rlbndtop1: TRLBand;
    rlbl5: TRLLabel;
    rlbl6: TRLLabel;
    rlbl7: TRLLabel;
    rlbndtop2: TRLBand;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtNOME: TRLDBText;
    rldbtxtCODSUBGRUPO: TRLDBText;
    rlsystmnf1: TRLSystemInfo;
    rlsystmnf2: TRLSystemInfo;
    rlsystmnf3: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelatorio: Tfrmrelatorio;

implementation

uses
  uprincipal, uconsultasubgrupo;

{$R *.dfm}

end.
