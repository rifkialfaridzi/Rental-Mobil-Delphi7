unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, sButton, sComboBox, sEdit, sLabel, DB, ADODB, Grids,
  DBGrids, sGroupBox, sMemo;

type
  TFrame8 = class(TFrame)
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton6: TsButton;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sEdit1: TsEdit;
    sLabel2: TsLabel;
    sEdit2: TsEdit;
    sComboBox1: TsComboBox;
    sLabel1: TsLabel;
    sEdit5: TsEdit;
    sLabel4: TsLabel;
    sEdit4: TsEdit;
    sLabel3: TsLabel;
    sMemo1: TsMemo;
    sEdit10: TsEdit;
    sComboBox2: TsComboBox;
    sButton7: TsButton;
    sButton8: TsButton;
    ADOQuery1: TADOQuery;
    procedure sButton6Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sButton5Click(Sender: TObject);
    procedure sEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure sButton7Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame8.sButton6Click(Sender: TObject);
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

procedure TFrame8.sButton2Click(Sender: TObject);
begin
sComboBox1.Clear;
sEdit1.Text :='PG-' + FormatDateTime('YYYYMMddHHss',NOW);
sEdit2.Clear;
sEdit4.Clear;
sEdit5.Clear;
sMemo1.Clear;
sButton1.Enabled := true;
sComboBox1.Enabled := true;
// --- Jenis kelamin
sComboBox1.Items.Add('Pria');
sComboBox1.Items.Add('Wanita');
end;

procedure TFrame8.sButton1Click(Sender: TObject);
begin
if  ((sEdit2.Text = '') AND (sEdit4.Text = '') AND (sEdit5.Text = ''))  then
 begin
  MessageDlg('Data belum lengkap',mtWarning,mbOKCancel,0);
 end
 else
 begin
  ADOQuery1.Append;
  ADOQuery1.FieldByName('ID_pelanggan').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('Nama_pelanggan').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Alamat_pelanggan').AsString := sMemo1.Text;
  ADOQuery1.FieldByName('Tlp_pelanggan').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('NIK_pelanggan').AsString := sEdit5.Text;
  ADOQuery1.FieldByName('Jenis_kelamin').AsString := sComboBox1.Text;
  ADOQuery1.Post;
 sButton1.Enabled := false;
 sButton2.Enabled := True;
 MessageDlg('Data Berhasil Di simpan',mtInformation,[mbOK],0);
 end;
end;

procedure TFrame8.sButton4Click(Sender: TObject);
begin
sComboBox1.Clear;
DBGrid1.Font.Color := clred;
// --
sComboBox1.Enabled := true;
sComboBox1.Items.Add('Pria');
sComboBox1.Items.Add('Wanita');
// --
DBGrid1.Enabled := true;
sButton5.Enabled := true;
end;

procedure TFrame8.DBGrid1CellClick(Column: TColumn);
begin
  sEdit1.Text := ADOQuery1.FieldByName('ID_pelanggan').AsString;
  sEdit2.Text := ADOQuery1.FieldByName('Nama_pelanggan').AsString;
  sMemo1.Text := ADOQuery1.FieldByName('Alamat_pelanggan').AsString;
  sEdit4.Text := ADOQuery1.FieldByName('Tlp_pelanggan').AsString;
  sEdit5.Text := ADOQuery1.FieldByName('NIK_pelanggan').AsString;
  sComboBox1.Text := ADOQuery1.FieldByName('Jenis_kelamin').AsString;
end;

procedure TFrame8.sButton5Click(Sender: TObject);
begin
with  ADOQuery1 do
  begin
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('ID_pelanggan').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('Nama_pelanggan').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Alamat_pelanggan').AsString := sMemo1.Text;
  ADOQuery1.FieldByName('Tlp_pelanggan').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('NIK_pelanggan').AsString := sEdit5.Text;
  ADOQuery1.FieldByName('Jenis_kelamin').AsString := sComboBox1.Text;
  ADOQuery1.Post;
end;
end;

procedure TFrame8.sEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then
 begin
  if MessageDlg('Harus di isi angka',mtWarning,[mbYes,mbNo],0) = mrYes then
   begin
    sEdit4.SetFocus;
    sEdit4.text := '';
   end;
 end;
end;

procedure TFrame8.sButton7Click(Sender: TObject);
begin
 With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pelanggan');
    Active := true;
 end;
end;

procedure TFrame8.sButton8Click(Sender: TObject);
begin
if ( sComboBox2.Text = 'ID Pelanggan' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pelanggan where ID_pelanggan like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- ID
 end
 else
  if ( sComboBox2.Text = 'Nama Pelanggan' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pelanggan where Nama_pelanggan like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- Nama
 end
 else
  if ( sComboBox2.Text = 'Alamat' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pelanggan where Alamat_pelanggan like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- alamat
 end;
end;

end.
