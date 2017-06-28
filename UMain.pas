unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, GifImage;

type
  TfrmMain = class(TForm)
    panMap: TPanel;
    panPlayer: TPanel;
    imgMap: TImage;
    imgPlayer: TGifImage;
    imgfield1: TImage;
    imgfield2: TImage;
    imgfield3: TImage;
    imgfield5: TImage;
    imgfield6: TImage;
    imgfield4: TImage;
    lblDice: TLabel;
    Panel1: TPanel;
    btnDiceA: TButton;
    lblPlayerName: TLabel;
    lblMode: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnDiceAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    N, FNum : integer;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses Unit1, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
var  FieldName : string;
begin
     randomize;
     {mylab:=tlabel(frmDialog.findcomponent('Label1'));
     showmessage(mylab.caption);
    }
     N := 0;
     FieldName := '';
     //FNum represents the number of fields on the map
     FNum := 6;

     // Player moves to the center of the screen
     panPlayer.Left := (frmMain.ClientWidth div 2) - (panPlayer.Width div 2);
     panPlayer.Top := (frmMain.Clientheight div 2) - (panPlayer.height div 2);
end;

procedure TfrmMain.btnDiceAClick(Sender: TObject);
var D : integer;
    Field : TImage;
    ImgName : string;
begin
        // Dice simulation (D):
        // D := random (6)+1;
        D := 1;
        lblDice.Caption := inttostr(D);

        // Field Number (N):
        N := D + N;

        //map-panel moves
         if N <= FNum then
            begin
               ImgName := 'imgfield' + inttostr(N);
               Field := (Timage(frmMain.findcomponent(ImgName)));
               panMap.Left := panMap.Left + (panPlayer.Left -
                                                (panMap.Left + Field.Left));
               panMap.Top := panMap.Top + (panPlayer.Top -
                        (panMap.Top + Field.Top)) + 40;
            end;
end;

end.
