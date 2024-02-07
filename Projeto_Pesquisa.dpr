program Projeto_Pesquisa;

uses
  Vcl.Forms,
  uprincipal in 'uprincipal.pas' {Frmprincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmprincipal, Frmprincipal);
  Application.Run;
end.
