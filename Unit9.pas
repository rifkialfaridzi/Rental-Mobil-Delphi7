unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, sComboBox, sMemo, sButton,
  sEdit, sLabel, sGroupBox;

type
  TFrame9 = class(TFrame)
    sGroupBox2: TsGroupBox;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel1: TsLabel;
    sEdit1: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sEdit2: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sMemo1: TsMemo;
    sComboBox1: TsComboBox;
    sGroupBox1: TsGroupBox;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton6: TsButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    sLabel5: TsLabel;
    sEdit3: TsEdit;
    sEdit10: TsEdit;
    sComboBox2: TsComboBox;
    sButton7: TsButton;
    sButton8: TsButton;
    ADOQuery1: TADOQuery;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sButton4Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
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

procedure TFrame9.sButton1Click(Sender: TObject);
var z:string;
begin
z:= '0';
if (sEdit2.Text = '') then
 begin
  MessageDlg('Data kurang lengkap',mtWarning,[mbOk],0);
 end
 else
 begin
 ADOQuery1.Append;
  ADOQuery1.FieldByName('ID_sopir').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('Nama_sopir').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Alamat_sopir').AsString := sMemo1.Text;
  ADOQuery1.FieldByName('Kelamin_sopir').AsString := sComboBox1.Text;
  ADOQuery1.FieldByName('Tlp').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('NIK').AsString := sEdit5.Text;
  ADOQuery1.FieldByName('Harga').AsString := sEdit3.Text;
  ADOQuery1.FieldByName('Status').AsString := z;
 ADOQuery1.Post;
 sButton1.Enabled := false;
 sButton2.Enabled := True;
 MessageDlg('Data Berhasil Di simpan',mtInformation,[mbOK],0);
 end;
end;

procedure TFrame9.sButton2Click(Sender: TObject);
begin
sEdit1.Text :='SO-' + FormatDateTime('YYYYMMddHHss',NOW);
sButton1.Enabled := true;
// --- Jenis kelamin
sComboBox1.Items.Add('Pria');
sComboBox1.Items.Add('Wanita');
// --- button
sComboBox1.Enabled := true;
sEdit2.Clear;
sEdit4.Clear;
sEdit5.Clear;
sMemo1.Clear;
sButton2.Enabled := false;
end;

procedure TFrame9.sButton6Click(Sender: TObject);
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

procedure TFrame9.sButton5Click(Sender: TObject);
begin
with  ADOQuery1 do
  begin
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('ID_sopir').AsString := sEdit1.Text;
  ADOQuery1.FieldByName('Nama_sopir').AsString := sEdit2.Text;
  ADOQuery1.FieldByName('Alamat_sopir').AsString := sMemo1.Text;;
  ADOQuery1.FieldByName('Tlp').AsString := sEdit4.Text;
  ADOQuery1.FieldByName('NIK').AsString := sEdit5.Text;
  ADOQuery1.FieldByName('Kelamin_sopir').AsString := sComboBox1.Text;
  ADOQuery1.FieldByName('Harga').AsString := sEdit3.Text;
  ADOQuery1.Post;
  end;
end;

procedure TFrame9.DBGrid1CellClick(Column: TColumn);
begin
sEdit1.Text := ADOQuery1.FieldByName('ID_sopir').AsString;
sEdit2.Text := ADOQuery1.FieldByName('Nama_sopir').AsString;
sMemo1.Text := ADOQuery1.FieldByName('Alamat_sopir').AsString;
sEdit4.Text := ADOQuery1.FieldByName('Tlp').AsString;
sEdit5.Text := ADOQuery1.FieldByName('NIK').AsString;
sEdit3.Text := ADOQuery1.FieldByName('Harga').AsString;
sComboBox1.Text := ADOQuery1.FieldByName('Kelamin_sopir').AsString;



end;

procedure TFrame9.sButton4Click(Sender: TObject);
begin
DBGrid1.Font.Color := clred;
// --
sComboBox1.Enabled := TRUE;
sComboBox1.Items.Add('Pria');
sComboBox1.Items.Add('Wanita');
// --
DBGrid1.Enabled := true;
sButton5.Enabled := true;

end;

procedure TFrame9.sButton3Click(Sender: TObject);
begin
// -- button
sEdit2.Clear;
sEdit4.Clear;
sEdit5.Clear;
sMemo1.Clear;
sButton2.Enabled := true;
sButton1.Enabled := false;
end;

procedure TFrame9.sEdit4KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrame9.sButton7Click(Sender: TObject);
begin
 With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_sopir');
    Active := true;
 end;
end;

procedure TFrame9.sButton8Click(Sender: TObject);
begin
if ( sComboBox2.Text = 'ID Sopir' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_sopir where ID_sopir like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- ID
 end
 else
  if ( sComboBox2.Text = 'Nama Sopir' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_sopir where Nama_sopir like' + QuotedStr('%'+sEdit10.Text+'%'));
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
    SQL.Add('select * from tb_sopir where Alamat_sopir like' + QuotedStr('%'+sEdit10.Text+'%'));
    Active := true;
 end;
 // --- alamat
 end;
end;

end.
