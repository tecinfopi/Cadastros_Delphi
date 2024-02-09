program Projeto_Pesquisa;

uses
  Vcl.Forms,
  uprincipal in 'uprincipal.pas' {Frmprincipal},
  uconsultasubgrupo in 'uconsultasubgrupo.pas' {frmconsub};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmprincipal, Frmprincipal);
  Application.Run;
end.
