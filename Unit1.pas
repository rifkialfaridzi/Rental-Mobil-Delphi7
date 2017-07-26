unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, acPNG, Unit2, Unit4, Unit3, StdCtrls, sLabel, Unit5,
  sButton, sSkinManager, Unit14;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image12: TImage;
    Image14: TImage;
    Image9: TImage;
    Image10: TImage;
    Image15: TImage;
    Image16: TImage;
    Frame21: TFrame2;
    Image11: TImage;
    Image17: TImage;
    Image13: TImage;
    Image18: TImage;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    Image19: TImage;
    Image20: TImage;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    Image21: TImage;
    Image22: TImage;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Frame51: TFrame5;
    sSkinManager1: TsSkinManager;
    sLabel10: TsLabel;
    Image31: TImage;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    Image32: TImage;
    Frame41: TFrame4;
    Frame31: TFrame3;
    Frame141: TFrame14;
    Label1: TLabel;
    Label2: TLabel;
    procedure Image8Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Frame41Label2Click(Sender: TObject);
    procedure Frame41Label1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Frame21sComboBox1Change(Sender: TObject);
    procedure Frame21sComboBox2Change(Sender: TObject);
    procedure Frame21sCheckBox1Click(Sender: TObject);
    procedure sLabel10Click(Sender: TObject);
    procedure sLabel10DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image8Click(Sender: TObject);
begin
Frame21.Visible := True;
Frame31.Visible := False;
Frame41.Visible := False;
Frame51.Visible := False;
// END
Image11.Visible := True;
Image12.Visible := False;
Image13.Visible := True;
Image9.Visible := True;
Image29.Visible := True;
Image26.Visible := True;
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
Frame21.Visible := True;
Frame31.Visible := False;
Frame41.Visible := False;
Frame51.Visible := False;
// END
Image11.Visible := True;
Image12.Visible := False;
Image13.Visible := True;
Image9.Visible := True;
Image29.Visible := True;
Image26.Visible := True;
end;

procedure TForm1.Image14Click(Sender: TObject);
begin

Frame21.Visible := False;
Frame31.Visible := True;
Frame41.Visible := False;
Frame51.Visible := False;
// END
Image11.Visible := False;
Image13.Visible := False;
Image12.Visible := True;
Image17.Visible := True;
Image9.Visible := True;
Image29.Visible := True;
Image26.Visible := True;
 with Frame31.Frame101.ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('select * from tb_boking where status= "1"');
 ExecSQL;
 Active:= true;
 Open;
end;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := False;
Frame41.Visible := True;
Frame51.Visible := False;
// END
Image9.Visible := False;
Image18.Visible := True;
Image13.Visible := True;
Image12.Visible := True;
Image29.Visible := True;
Image26.Visible := True;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := False;
Frame41.Visible := True;
Frame51.Visible := False;
// END
Image9.Visible := False;
Image18.Visible := True;
Image13.Visible := True;
Image12.Visible := True;
Image29.Visible := True;
Image29.Visible := True;
Image26.Visible := True;
end;

procedure TForm1.Image13Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := True;
Frame41.Visible := False;
Frame51.Visible := False;
// END
Image11.Visible := False;
Image13.Visible := False;
Image12.Visible := True;
Image17.Visible := True;
Image9.Visible := True;
Image29.Visible := True;
Image26.Visible := True;
end;

procedure TForm1.Image16Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Image15Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Image28Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := False;
Frame41.Visible := False;
Frame51.Visible := True;
//END
Image12.Visible := True;
Image13.Visible := True;
Image9.Visible := True;
Image29.Visible := False;
Image26.Visible := True;

end;

procedure TForm1.Image29Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := False;
Frame41.Visible := False;
Frame51.Visible := True;
//END
Image12.Visible := True;
Image13.Visible := True;
Image9.Visible := True;
Image29.Visible := False;
Image26.Visible := True;
end;

procedure TForm1.Image26Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := False;
Frame41.Visible := False;
Frame51.Visible := False;
//END
Image12.Visible := True;
Image13.Visible := True;
Image9.Visible := True;
Image29.Visible := True;
Image26.Visible := False;
end;

procedure TForm1.Image27Click(Sender: TObject);
begin
Frame21.Visible := False;
Frame31.Visible := False;
Frame41.Visible := False;
Frame51.Visible := False;
// END
Image12.Visible := True;
Image13.Visible := True;
Image9.Visible := True;
Image29.Visible := True;
Image26.Visible := False;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
Form1.perform(WM_syscommand, $F012, 0);
end;

procedure TForm1.Frame41Label2Click(Sender: TObject);
begin
  Frame41.Label2Click(Sender);

end;

procedure TForm1.Frame41Label1Click(Sender: TObject);
begin
  Frame41.Label1Click(Sender);

end;

procedure TForm1.FormCreate(Sender: TObject);
var Dir:String;
begin
Dir:='D:\img22';
if DirectoryExists(dir) then
begin
end
else
ForceDirectories(Dir);
end;

procedure TForm1.Frame21sComboBox1Change(Sender: TObject);
begin
  Frame21.sComboBox1Change(Sender);

end;

procedure TForm1.Frame21sComboBox2Change(Sender: TObject);
begin
  Frame21.sComboBox2Change(Sender);

end;

procedure TForm1.Frame21sCheckBox1Click(Sender: TObject);
begin
  Frame21.sCheckBox1Click(Sender);

end;

procedure TForm1.sLabel10Click(Sender: TObject);
begin
Frame141.Visible := TRUE;
end;

procedure TForm1.sLabel10DblClick(Sender: TObject);
begin
Frame141.Visible := FALSE;
end;

end.
