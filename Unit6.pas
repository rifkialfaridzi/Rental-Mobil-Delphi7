unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, sEdit, sLabel, sButton,
  ExtCtrls, sGroupBox, ExtDlgs, sComboBox, acPNG;

type
  TFrame6 = class(TFrame)
    sGroupBox1: TsGroupBox;
    Image1: TImage;
    sButton1: TsButton;
    sLabel1: TsLabel;
    sEdit1: TsEdit;
    sLabel2: TsLabel;
    sEdit2: TsEdit;
    sLabel3: TsLabel;
    sEdit3: TsEdit;
    sLabel4: TsLabel;
    sEdit4: TsEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    sGroupBox2: TsGroupBox;
    DBGrid1: TDBGrid;
    sButton2: TsButton;
    sButton3: TsButton;
    sEdit5: TsEdit;
    sButton4: TsButton;
    sButton5: TsButton;
    OpenPictureDialog1: TOpenPictureDialog;
    sButton6: TsButton;
    sButton7: TsButton;
    sLabel5: TsLabel;
    sEdit6: TsEdit;
    sLabel6: TsLabel;
    sEdit7: TsEdit;
    sLabel7: TsLabel;
    sEdit8: TsEdit;
    sComboBox1: TsComboBox;
    sButton8: TsButton;
    sEdit9: TsEdit;
    Image2: TImage;
    sComboBox2: TsComboBox;
    sEdit10: TsEdit;
    sButton9: TsButton;
    sButton10: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure sButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sButton7Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame6.sButton1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
 Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFrame6.sButton4Click(Sender: TObject);
var z,path:string;
begin
with ADOQuery1 do
 begin
  close;
  Active := false;
  SQL.Clear;
  SQL.Text := 'select * from tb_mobil';
  ExecSQL;
  Active := true;
 end;
z:= '0';
sEdit5.Text :='MB-' + FormatDateTime('YYYYMMddHHss',NOW);
sButton4.Enabled := false;
Image1.Picture.SaveToFile('D:\img22\'+ sEdit5.Text +'.bmp');
path := 'D:\img22\'+ sEdit5.Text +'.bmp';
// ---
if  (( sEdit1.Text = '') AND (sEdit2.Text = '') AND (sEdit3.Text = '') AND (sEdit4.Text = ''))  then
 begin
  MessageDlg('Data belum lengkap',mtWarning,mbOKCancel,0);
 end
 else
 begin
// --- iNPUT TO DATABASE
  ADOQuery1.Append;
  ADOQuery1.FieldByName('ID_mobil').AsString := sEdit5.Text;
  ADOQuery1.FieldByName('nopol').AsString := sEdit3.Text;
  ADOQuery1.FieldByName('Kabin').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('Jenis_mobil').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Nama_mobil').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('No_mesin').AsString := sEdit6.Text;
  ADOQuery1.FieldByName('Warna_mobil').AsString := sEdit7.Text;
  ADOQuery1.FieldByName('Harga_sewa').AsString := sEdit8.Text;
  ADOQuery1.FieldByName('path').AsString := path;
  ADOQuery1.FieldByName('Status').AsString := z;
  ADOQuery1.Post;
  sButton4.Enabled := false;
 sButton6.Enabled := True;
 MessageDlg('Data Berhasil Di simpan',mtInformation,[mbOK],0);
 end;
end;

procedure TFrame6.sButton6Click(Sender: TObject);
begin
sButton4.Enabled := true;
sButton1.Enabled := true;
DBGrid1.Enabled := FALSE;
sEdit5.Text :='MB-' + FormatDateTime('YYYYMMddHHss',NOW);
sEdit1.Clear;
sEdit2.Clear;
sEdit3.Clear;
sEdit4.Clear;
sEdit1.Enabled:= True;
sEdit2.Enabled:= True;
sEdit3.Enabled:= True;
sEdit4.Enabled:= True;
sEdit6.Enabled:= True;
sEdit8.Enabled:= True;
sEdit7.Enabled:= True;
end;

procedure TFrame6.sEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then
 begin
  MessageDlg('Harus di isi angka',mtWarning,mbOKCancel,0);
 end;
end;

procedure TFrame6.sButton2Click(Sender: TObject);
begin
if (ADOQuery1.RecordCount < 1 ) then
 begin
   MessageDlg('Data Sudah Kosong',mtWarning,[mbOK],0);
 end
 else
 begin
  if MessageDlg('Yakin mau di hapus ? ',mtWarning,[mbYes,mbNo],0) = mrYes then
   begin
    ADOQuery1.delete;
   end;
 end;
end;

procedure TFrame6.Button1Click(Sender: TObject);
begin
DBGrid1.Enabled := True;
end;

procedure TFrame6.DBGrid1CellClick(Column: TColumn);
begin
 sEdit5.Text := ADOQuery1.FieldByName('ID_mobil').AsString;
 sEdit1.Text := ADOQuery1.FieldByName('Nama_mobil').AsString;
 sEdit2.Text := ADOQuery1.FieldByName('Jenis_mobil').AsString;
 sEdit3.Text := ADOQuery1.FieldByName('nopol').AsString;
 sEdit4.Text := ADOQuery1.FieldByName('kabin').AsString;
 sEdit6.Text := ADOQuery1.FieldByName('No_mesin').AsString;
 sEdit7.Text := ADOQuery1.FieldByName('Warna_mobil').AsString;
 sEdit8.Text := ADOQuery1.FieldByName('Harga_sewa').AsString;
 Image1.Picture.LoadFromFile(ADOQuery1.FieldByName('path').AsString);
end;

procedure TFrame6.sButton7Click(Sender: TObject);
begin
DBGrid1.Font.Color := clred;
sButton1.Enabled := true;
sButton3.Enabled := true;
sButton6.Enabled := False;
DBGrid1.Enabled := true;
sEdit1.Enabled:= True;
sEdit2.Enabled:= True;
sEdit3.Enabled:= True;
sEdit4.Enabled:= True;
sEdit6.Enabled:= True;
sEdit8.Enabled:= True;
sEdit7.Enabled:= True;
end;

procedure TFrame6.sButton5Click(Sender: TObject);
begin
sEdit1.Clear;
sEdit2.Clear;
sEdit3.Clear;
sEdit4.Clear;
sEdit5.Clear;
sButton4.Enabled := false;
sButton6.Enabled := true;
end;

procedure TFrame6.sButton3Click(Sender: TObject);
var path :string;
begin
// --- UPDATE
Image1.Picture.SaveToFile('D:\img22\'+ sEdit5.Text +'.bmp');
path := 'D:\img22\'+ sEdit5.Text +'.bmp';
with  ADOQuery1 do
  ADOQuery1.Edit;
    ADOQuery1.FieldByName('ID_mobil').AsString := sEdit5.Text;
    ADOQuery1.FieldByName('Nama_mobil').AsString := sEdit1.Text ;
    ADOQuery1.FieldByName('Jenis_mobil').AsString := sEdit2.Text;
    ADOQuery1.FieldByName('nopol').AsString := sEdit3.Text;
    ADOQuery1.FieldByName('kabin').AsString :=sEdit4.Text;
    ADOQuery1.FieldByName('No_mesin').AsString := sEdit6.Text;
    ADOQuery1.FieldByName('Warna_mobil').AsString := sEdit7.Text;
    ADOQuery1.FieldByName('Harga_sewa').AsString := sEdit8.Text;
    ADOQuery1.FieldByName('path').AsString := path;
ADOQuery1.Post;
end;
procedure TFrame6.ComboBox1Click(Sender: TObject);
var i:integer;
begin

end;

procedure TFrame6.sButton8Click(Sender: TObject);
var i:integer;
begin
sComboBox1.Clear;
sComboBox1.Enabled := true;
// ---  tampil data pemilik

with ADOQuery1 do
 begin
  close;
  Active := false;
  SQL.Clear;
  SQL.Text := 'select * from tb_pemilik';
  ExecSQL;
  Active := true;
 end;
 for i:= 1 to ADOQuery1.RecordCount do
 begin
  sComboBox1.Items.Add(ADOQuery1.FieldValues['ID_pemilik']);
  ADOQuery1.Next;
 end;
 sButton8.Enabled := false;
end;

procedure TFrame6.sComboBox1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add ('Select * from tb_pemilik where ID_pemilik Like' + QuotedStr(sComboBox1.Text + '%'));
ADOQuery1.Open;
//--- tampil data
while NOT ADOQuery1.Eof do  
begin
  sEdit9.Text:= ADOQuery1.FieldValues['Nama_pemilik'];
  ADOQuery1.Next;
end;
ADOQuery1.Close;
end;

procedure TFrame6.Image2Click(Sender: TObject);
begin
sComboBox1.Enabled := false;
with ADOQuery1 do
 begin
  close;
  Active := false;
  SQL.Clear;
  SQL.Text := 'select * from tb_pemilik';
  Active := true;
 end;
sButton8.Enabled := true;
end;

procedure TFrame6.sButton10Click(Sender: TObject);
begin
if ( sComboBox2.Text = 'ID Mobil' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_mobil where ID_mobil like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- ID
 end
 else
  if ( sComboBox2.Text = 'Nama Mobil' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_mobil where Nama_mobil like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- Nama
 end
 else
  if ( sComboBox2.Text = 'Nomor Polisi' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_mobil where Nopol like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- Nopol
 end;
end;

procedure TFrame6.sButton9Click(Sender: TObject);
begin
 With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_mobil');
    Active := true;
 end;
end;

end.
