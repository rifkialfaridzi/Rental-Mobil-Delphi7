unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, acPNG, ExtCtrls, Unit10, Unit11;

type
  TFrame3 = class(TFrame)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Frame101: TFrame10;
    Frame111: TFrame11;
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Frame111sButton2Click(Sender: TObject);
    procedure Frame111sButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame3.Label2Click(Sender: TObject);
begin
 Image6.Visible := false;
 Image3.Visible := false;
 Image4.Visible := true;
 Image2.Visible := true;
 Image7.Visible := true;
 Image5.Visible := false;
 Label3.Font.Color := clWhite;
 Label2.Font.Color := clblack;
 Frame101.Visible := true;
 Frame111.Visible := False;
end;

procedure TFrame3.Label3Click(Sender: TObject);
begin
 Image2.Visible := false;
 Image7.Visible := false;
 Image5.Visible := true;
 Image3.Visible := true;
 Image6.Visible := true;
 Image4.Visible := false;
 Label2.Font.Color := clWhite;
 Label3.Font.Color := clblack;
 Frame111.Visible := true;
 Frame101.Visible := False;
end;

procedure TFrame3.Frame111sButton2Click(Sender: TObject);
begin
  Frame111.sButton2Click(Sender);

end;

procedure TFrame3.Frame111sButton3Click(Sender: TObject);
begin
  Frame111.sButton3Click(Sender);

end;

end.
