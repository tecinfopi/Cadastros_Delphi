program Projeto_Pesquisa;

uses
  Vcl.Forms,
  uprincipal in 'uprincipal.pas' {Frmprincipal},
  uconsultasubgrupo in 'uconsultasubgrupo.pas' {frmconsub},
  urelatorio in 'urelatorio.pas' {frmrelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmprincipal, Frmprincipal);
  Application.CreateForm(Tfrmrelatorio, frmrelatorio);
  Application.Run;
end.
