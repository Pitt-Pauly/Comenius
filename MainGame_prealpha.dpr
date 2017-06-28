program MainGame_prealpha;

uses
  Forms,
    Unit1 in 'Unit1.pas' {menu},
    Unit3 in 'Unit3.pas' {options},
    Unit4 in 'Unit4.pas' {about comenius},
    Unit5 in 'Unit5.pas' {help},
    UMain in 'UMain.pas' {frmMain};
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmenu, menu);
  Application.CreateForm(Toptions, options);
  Application.CreateForm(Tcomenius, comenius);
  Application.CreateForm(Thelp, help);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
