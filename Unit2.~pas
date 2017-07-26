unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, acPNG, ExtCtrls, sComboBox, sLabel, sEdit, sButton,
  Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sGroupBox, DB, ADODB,
  sCheckBox, sMemo, Grids, DBGrids;

type
  TFrame2 = class(TFrame)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    sLabel1: TsLabel;
    Image4: TImage;
    Image5: TImage;
    sLabel2: TsLabel;
    Image6: TImage;
    Label2: TLabel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    Label3: TLabel;
    Label4: TLabel;
    sEdit3: TsEdit;
    Image7: TImage;
    Image9: TImage;
    Image8: TImage;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    sGroupBox1: TsGroupBox;
    Label1: TLabel;
    sEdit4: TsEdit;
    Label12: TLabel;
    Label9: TLabel;
    sDateEdit1: TsDateEdit;
    Label13: TLabel;
    sDateEdit4: TsDateEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    sEdit5: TsEdit;
    sMemo1: TsMemo;
    Label5: TLabel;
    sGroupBox2: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sLabel5: TsLabel;
    sEdit6: TsEdit;
    sLabel6: TsLabel;
    sEdit7: TsEdit;
    sLabel7: TsLabel;
    sEdit8: TsEdit;
    sLabel8: TsLabel;
    sEdit9: TsEdit;
    sLabel9: TsLabel;
    sEdit10: TsEdit;
    sLabel10: TsLabel;
    sEdit11: TsEdit;
    Label6: TLabel;
    sEdit12: TsEdit;
    sEdit13: TsEdit;
    DBGrid1: TDBGrid;
    Image13: TImage;
    sLabel11: TsLabel;
    Image14: TImage;
    Image15: TImage;
    sEdit14: TsEdit;
    sEdit15: TsEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure sComboBox1Change(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sEdit13DblClick(Sender: TObject);
    procedure sEdit13Change(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure sDateEdit4Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sEdit15Change(Sender: TObject);
    procedure sEdit15DblClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure sEdit5DblClick(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Image7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var zmobil,zsopir,IDsopir,hsopir:string;
implementation

uses Unit1;

{$R *.dfm}

procedure TFrame2.sComboBox1Change(Sender: TObject);

begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add ('Select * from tb_mobil');
ADOQuery1.Open;
// Change Visible Component
 Label2.Visible := True;
 Label3.Visible := True;
 Label4.Visible := True;
 sEdit1.Visible := True;
 sEdit2.Visible := True;
 sEdit3.Visible := True;
// END
// Ambil data
//Image3.Picture.LoadFromFile(ADOQuery1.FieldByName('path').AsString);
 //sEdit12.Text := ADOTable1.FieldByName('Jenis_mobil').AsString;
 while NOT ADOQuery1.Eof do  
  begin
  Image3.Picture.LoadFromFile(ADOQuery1.FieldValues['path']);
  sEdit3.Text := ADOQuery1.FieldValues['path'];
  ADOQuery1.Next;
  end;
  ADOQuery1.Close;
end;

procedure TFrame2.sButton2Click(Sender: TObject);
var jml : array[1..10] of integer;
begin
  jml[1] := StrToInt(sEdit6.Text);
  jml[2] := StrToInt(sEdit7.Text);
  jml[3] := StrToInt(sEdit8.Text);
  jml[4] := (jml[1] * jml[2]) + (jml[1] * jml[3]);
  sEdit9.Text := IntToStr(jml[4]);
end;

procedure TFrame2.sCheckBox1Click(Sender: TObject);
begin
if sCheckBox1.Checked = True then
 begin
  sEdit15.Enabled := true;
 end
 else
 begin
 sEdit15.Enabled  := false;
 end;
end;

procedure TFrame2.DBGrid1CellClick(Column: TColumn);

begin
sEdit13.Text := ADOQuery1.FieldByName('Nama_mobil').AsString;
sEdit1.Text := ADOQuery1.FieldByName('ID_mobil').AsString;
sEdit3.Text := ADOQuery1.FieldByName('Kabin').AsString;
sEdit2.Text := ADOQuery1.FieldByName('Jenis_mobil').AsString;
sEdit12.Text := ADOQuery1.FieldByName('Harga_sewa').AsString;
sEdit8.Text := ADOQuery1.FieldByName('Harga_sewa').AsString;
zmobil := ADOQuery1.FieldByName('ID_mobil').AsString;

Image3.Picture.LoadFromFile(ADOQuery1.FieldByName('path').AsString);
DBGrid1.Visible:= false;
end;

procedure TFrame2.sEdit13DblClick(Sender: TObject);
begin
DBGrid2.Visible:= false;
DBGrid3.Visible:= false;
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('select * from tb_mobil where status like '+quotedstr('%'+'0'+'%'));
 Active:= true;
end;
if ADOQuery1.RecordCount < 1 then
 begin
  MessageDlg('Persediaan Mobil sudah habis',mtWarning,[mbOK],0);
  DBGrid1.Visible:= false;
 end
 else
 begin
  DBGrid1.Visible:= true;
 end;
end;

procedure TFrame2.sEdit13Change(Sender: TObject);
begin
Label2.Visible := true;
Label3.Visible := true;
Label4.Visible := true;
Label6.Visible := true;
sEdit1.Visible := true;
sEdit2.Visible := true;
sEdit3.Visible := true;
sEdit12.Visible := true;
end;

procedure TFrame2.Image13Click(Sender: TObject);
begin
// kode
sEdit4.Text :='BKG-' + FormatDateTime('YYYYMMddHHss',NOW);
sEdit14.Text := FormatDateTime('dd/mm/yyyy',date);

// --
sCheckBox1.Enabled := true;
sEdit4.Enabled := true;
sEdit5.Enabled := true;
sMemo1.Enabled := true;
sDateEdit1.Enabled := true;
sDateEdit4.Enabled := true;

end;

procedure TFrame2.sDateEdit4Change(Sender: TObject);
begin
sEdit6.Text := FloatToStr(StrToDate(DateToStr(sDateEdit4.Date))- StrToDate(DateToStr(sDateEdit1.Date))
                );
end;

procedure TFrame2.sComboBox2Change(Sender: TObject);
var jml : array[1..10] of integer;
    total : integer;
begin
// --
jml[1] := StrToInt(sEdit6.Text);
jml[2] := StrToInt(sEdit7.Text);
jml[3] := StrToInt(sEdit8.Text);
// --
total := (jml[1] * jml[2]) + (jml[1] * jml[3]);
sEdit9.Text := IntToStr(total);
end;

procedure TFrame2.sButton1Click(Sender: TObject);
var jml : array[1..10] of integer;
begin
if sEdit10.Text = '' then
 begin
  MessageDlg('Bayar dulu',mtWarning,[mbOK],0);
 end
 else
 begin
  sEdit11.Text := IntToStr(StrToInt(sEdit10.Text)-StrToInt(sEdit9.Text));
 end;
end;

procedure TFrame2.sEdit15Change(Sender: TObject);
begin
DBGrid1.Visible:= true;
end;

procedure TFrame2.sEdit15DblClick(Sender: TObject);
begin
DBGrid1.Visible:= false;
DBGrid3.Visible:= false;
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('select * from tb_sopir where status like '+quotedstr('%'+'0'+'%'));
 Active:= true;
end;
if ADOQuery1.RecordCount < 1 then
 begin
  MessageDlg('Persediaan Sopir sudah habis',mtWarning,[mbOK],0);
  DBGrid2.Visible:= false;
 end
 else
 begin
  DBGrid2.Visible:= true;
 end;
end;

procedure TFrame2.DBGrid2CellClick(Column: TColumn);
begin
sEdit15.Text := ADOQuery1.FieldByName('Nama_sopir').AsString;
sEdit7.Text := ADOQuery1.FieldByName('Harga').AsString;
IDsopir := ADOQuery1.FieldByName('ID_sopir').AsString;
zsopir := ADOQuery1.FieldByName('ID_sopir').AsString;
hsopir := ADOQuery1.FieldByName('Harga').AsString;
{if sEdit15.Text = '' then
 begin
  hsopir := '0';
 end
 else
 begin

 end; }
DBGrid2.Visible := false;
DBGrid1.Visible := false;
end;

procedure TFrame2.sEdit5DblClick(Sender: TObject);
begin
DBGrid1.Visible:= false;
DBGrid2.Visible:= false;
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('select * from tb_pelanggan');
 Active:= true;
end;
DBGrid3.Visible:= true;
end;

procedure TFrame2.DBGrid3CellClick(Column: TColumn);
begin
sEdit5.Text := ADOQuery1.FieldByName('Nama_pelanggan').AsString;

DBGrid3.Visible := false;
end;

procedure TFrame2.Image7Click(Sender: TObject);
begin
with ADOQuery1 do begin
 Active := false;
 Close;
 SQL.Text:='UPDATE tb_mobil set Status="1" WHERE ID_mobil="'+zmobil+'"';
 ExecSQL;
 SQL.Text:='UPDATE tb_sopir set Status="1" WHERE ID_sopir="'+zsopir+'"';
 ExecSQL;
 SQL.Text := 'select * from tb_mobil';
 Active := true;
 open;
end;
if sEdit15.Text = '' then
 begin
  hsopir := '0';
 end;
ADOTable1.Append;
  ADOTable1.FieldByName('ID_boking').AsString := sEdit4.Text;
  ADOTable1.FieldByName('Nama_pelanggan').AsString := sEdit5.Text;
  ADOTable1.FieldByName('Nama_mobil').AsString := sEdit13.Text;
  ADOTable1.FieldByName('ID_mobil').AsString := sEdit1.Text ;
  ADOTable1.FieldByName('Tanggal').AsString := sEdit14.Text;
  ADOTable1.FieldByName('Tgl_pinjam').AsString := DateToStr(sDateEdit1.Date);
  ADOTable1.FieldByName('Tgl_kembali').AsString := DateToStr(sDateEdit4.Date);
  ADOTable1.FieldByName('Nama_sopir').AsString := sEdit15.Text;
  ADOTable1.FieldByName('Biaya_sopir').AsString := hsopir;
  ADOTable1.FieldByName('Jml_hari').AsString := sEdit6.Text;
  ADOTable1.FieldByName('Total_biaya').AsString := sEdit9.Text;
  ADOTable1.FieldByName('Bayar').AsString := sEdit10.Text;
  ADOTable1.FieldByName('Kembali').AsString := sEdit11.Text;
  ADOTable1.FieldByName('Status').AsString := '1';
  ADOTable1.FieldByName('Biaya_mobil').AsString := sEdit8.Text;
  ADOTable1.FieldByName('ID_sopir').AsString := IDsopir;
 ADOTable1.Post;
 MessageDlg('Data Berhasil Di simpan',mtInformation,[mbOK],0);

end;

procedure TFrame2.Button1Click(Sender: TObject);
var jml : array[1..10] of integer;
begin
  jml[1] := StrToInt(sEdit6.Text);
  jml[2] := StrToInt(sEdit7.Text);
  jml[3] := StrToInt(sEdit8.Text);
  jml[4] := (jml[1] * jml[2]) + (jml[1] * jml[3]);
  sEdit9.Text := IntToStr(jml[4]);
end;

procedure TFrame2.Image10Click(Sender: TObject);
begin
// -- Clear
sEdit13.Clear;
sEdit1.Clear;
sEdit2.Clear;
sEdit3.Clear;
sEdit12.Clear;
sEdit4.Clear;
sEdit5.Clear;
sEdit14.Clear;
sDateEdit1.Clear;
sDateEdit4.Clear;
sMemo1.Clear;
sCheckBox1.Checked := false;
sEdit15.clear;
sEdit15.Enabled := false;
sEdit6.Text := '0';
sEdit7.Text := '0';
sEdit8.Text := '0';
sEdit9.Clear;
sEdit10.Clear;
sEdit11.Clear;
DBGrid1.Visible := false;

end;

end.
