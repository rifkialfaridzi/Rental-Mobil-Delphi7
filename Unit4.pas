unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, sButton, sSkinManager, ADODB, DB, ExtCtrls, acPNG,
  Unit6, Unit7, Unit8, Unit9;

type
  TFrame4 = class(TFrame)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Frame61: TFrame6;
    Frame71: TFrame7;
    Frame81: TFrame8;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Label4: TLabel;
    Frame91: TFrame9;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame4.Label1Click(Sender: TObject);
begin
Image3.Visible:= False;
Image2.Visible:= True;
Image4.Visible:= False;
Image11.Visible:= False;
Label1.Font.color := clBlack;
Label2.Font.color := clWhite;
Label3.Font.color := clWhite;
Label4.Font.color := clWhite;
Frame61.Visible := true;
Frame71.Visible:= false;
Frame81.Visible:= false;
Frame91.Visible := False;
// ---
Image6.Visible:= False;
Image9.Visible:= True;
// ---
Image5.Visible:=True;
Image8.Visible:=False;
// ---
Image7.Visible := False;
Image10.Visible:= True;
// ---
Image12.Visible := True;
Image13.Visible:= False;
end;

procedure TFrame4.Label2Click(Sender: TObject);
begin
Image3.Visible:= True;
Image2.Visible:= False;
Image4.Visible:= False;
Image11.Visible:= False;
Label1.Font.color := clWhite;
Label2.Font.color := clBlack;
Label3.Font.color := clWhite;
Label4.Font.color := clWhite;
Frame61.Visible := False;
Frame71.Visible := True;
Frame81.Visible := False;
Frame91.Visible := False;
// ---
Image6.Visible:= True;
Image9.Visible:= False;
// ---
Image5.Visible:=False;
Image8.Visible:=True;
// ---
Image7.Visible := False;
Image10.Visible:= True;
// ---
Image12.Visible := True;
Image13.Visible:= False;
end;

procedure TFrame4.Label3Click(Sender: TObject);
begin
Image3.Visible:= False;
Image2.Visible:= False;
Image4.Visible:= True;
Image11.Visible:= False;
Label1.Font.color := clWhite;
Label2.Font.color := clWhite;
Label3.Font.color := clBlack;
Label4.Font.color := clWhite;
Frame61.Visible := False;
Frame71.Visible := False;
Frame81.Visible := True;
Frame91.Visible := False;
// ---
Image6.Visible:= False;
Image9.Visible:= True;
// ---
Image5.Visible:=False;
Image8.Visible:=True;
// ---
Image7.Visible := True;
Image10.Visible:= False;
// ---
Image12.Visible := True;
Image13.Visible:= False;
end;

procedure TFrame4.Label4Click(Sender: TObject);
begin
Image3.Visible:= False;
Image2.Visible:= False;
Image4.Visible:= False;
Image11.Visible:= True;
Label1.Font.color := clWhite;
Label2.Font.color := clWhite;
Label3.Font.color := clWhite;
Label4.Font.color := clBlack;
Frame61.Visible := False;
Frame71.Visible := False;
Frame81.Visible := False;
Frame91.Visible:= true;
// ---
Image6.Visible:= False;
Image9.Visible:= True;
// ---
Image5.Visible:=False;
Image8.Visible:=True;
// ---
Image7.Visible := False;
Image10.Visible:= True;
// ---
Image12.Visible := False;
Image13.Visible:= True;
end;

end.
