unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  Tmenu = class(TForm)
    panMenu: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    lblname: TLabel;
    edtname: TEdit;
    rgmode: TRadioGroup;
    btnstart: TButton;
    btnOptions: TButton;
    btnAbout: TButton;
    btnexit: TButton;
    btnhelp: TButton;
    procedure btnstartClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu: Tmenu;

implementation

uses Unit3, Unit4, Unit5, UMain;

{$R *.dfm}



procedure Tmenu.btnstartClick(Sender: TObject);
begin
     frmMain.Show;
     frmMain.lblPlayerName.Caption := edtname.text;
     frmMain.lblMode.Caption := rgmode.Items[rgmode.Itemindex];
end;

procedure Tmenu.btnexitClick(Sender: TObject);
begin
        close;
end;

procedure Tmenu.btnOptionsClick(Sender: TObject);
begin
        options.showmodal;
end;

procedure Tmenu.btnAboutClick(Sender: TObject);
begin
        comenius.showmodal;
end;

procedure Tmenu.btnhelpClick(Sender: TObject);
begin
        help.showmodal;
end;

end.

