unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, sGroupBox, sButton, sEdit, DB, ADODB, Grids, DBGrids,
  sLabel, sMemo, sComboBox;

type
  TFrame7 = class(TFrame)
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sEdit1: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sEdit2: TsEdit;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sEdit4: TsEdit;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton6: TsButton;
    sLabel1: TsLabel;
    sEdit5: TsEdit;
    sMemo1: TsMemo;
    sComboBox1: TsComboBox;
    sEdit10: TsEdit;
    sComboBox2: TsComboBox;
    sButton7: TsButton;
    sButton8: TsButton;
    ADOQuery1: TADOQuery;
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure sButton6Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sButton7Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame7.sButton2Click(Sender: TObject);
begin
sEdit1.Text :='PM-' + FormatDateTime('YYYYMMddHHss',NOW);
sComboBox1.CLEAR;
sComboBox1.Items.Add('Pria');
sComboBox1.Items.Add('Wanita');
sButton1.Enabled := true;
sComboBox1.Enabled := true;
sEdit2.Clear;
sEdit4.Clear;
sEdit5.Clear;
sMemo1.Clear;
end;

procedure TFrame7.sButton1Click(Sender: TObject);
begin
if  ((sEdit2.Text = '') AND (sEdit4.Text = ''))  then
 begin
  MessageDlg('Data belum lengkap',mtWarning,mbOKCancel,0);
 end
 else
 begin
  ADOQuery1.Append;
  ADOQuery1.FieldByName('ID_pemilik').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('Nama_pemilik').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Alamat_pemilik').AsString := sMemo1.Text;
  ADOQuery1.FieldByName('Tlp_pemilik').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('Jenis_kelamin').AsString := sComboBox1.Text;
  ADOQuery1.FieldByName('NIK_pemilik').AsString := sEdit5.Text;
  ADOQuery1.Post;
 sButton1.Enabled := false;
 sButton2.Enabled := True;
 MessageDlg('Data Berhasil Di simpan',mtInformation,[mbOK],0);
 end;
end;

procedure TFrame7.sEdit4KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrame7.sButton6Click(Sender: TObject);
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

procedure TFrame7.sButton4Click(Sender: TObject);
begin
DBGrid1.Font.Color := clred;
sButton5.Enabled := true;
sButton1.Enabled := FALSE;
DBGrid1.Enabled := true;
//---
sComboBox1.Enabled := true;
sComboBox1.Items.Add('Pria');
sComboBox1.Items.Add('Wanita');
end;

procedure TFrame7.sButton5Click(Sender: TObject);
begin
with  ADOQuery1 do
  begin
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('ID_pemilik').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('Nama_pemilik').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Alamat_pemilik').AsString := sMemo1.Text;;
  ADOQuery1.FieldByName('Tlp_pemilik').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('NIK_pemilik').AsString := sEdit5.Text;
  ADOQuery1.Post;
  end;
end;

procedure TFrame7.DBGrid1CellClick(Column: TColumn);
begin
sEdit1.Text := ADOQuery1.FieldByName('ID_pemilik').AsString;
sEdit2.Text := ADOQuery1.FieldByName('Nama_pemilik').AsString;
sMemo1.Text := ADOQuery1.FieldByName('Alamat_pemilik').AsString;
sEdit4.Text := ADOQuery1.FieldByName('Tlp_pemilik').AsString;
sEdit5.Text := ADOQuery1.FieldByName('NIK_pemilik').AsString;
sComboBox1.Text := ADOQuery1.FieldByName('Jenis_kelamin').AsString;
end;

procedure TFrame7.sButton7Click(Sender: TObject);
begin
 With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pemilik');
    Active := true;
 end;
end;

procedure TFrame7.sButton8Click(Sender: TObject);
begin
if ( sComboBox2.Text = 'ID Pemilik' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pemilik where ID_pemilik like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- ID
 end
 else
  if ( sComboBox2.Text = 'Nama Pemilik' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pemilik where Nama_pemilik like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- Nama
 end
 else
  if ( sComboBox2.Text = 'Alamat Pemilik' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_pemilik where Alamat_pemilik like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- alamat
 end;
end;

end.
