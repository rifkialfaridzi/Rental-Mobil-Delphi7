unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, sButton, Mask, sMaskEdit,
  sCustomComboEdit, sToolEdit, sLabel, sEdit, sComboBox;

type
  TFrame10 = class(TFrame)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    sButton1: TsButton;
    sButton2: TsButton;
    ADOQuery1: TADOQuery;
    sDateEdit1: TsDateEdit;
    sDateEdit2: TsDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sButton3: TsButton;
    sLabel1: TsLabel;
    Label4: TLabel;
    sComboBox1: TsComboBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    sEdit1: TsEdit;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sDateEdit2Change(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure sEdit1DblClick(Sender: TObject);
    procedure sEdit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  var zmobil,zsopir:string;
implementation

uses Unit12, Unit13;

{$R *.dfm}

procedure TFrame10.sButton1Click(Sender: TObject);
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
    with ADOQuery1 do begin
    Active := false;
    Close;
    SQL.Text:='UPDATE tb_mobil set Status="0" WHERE ID_mobil="'+zmobil+'"';
    ExecSQL;
    SQL.Text:='UPDATE tb_sopir set Status="0" WHERE ID_sopir="'+zsopir+'"';
    ExecSQL;
   SQL.Text := 'select * from tb_boking where status="1"';
    Active := true;
    open;
    end;
   end;
 end;
end;

procedure TFrame10.sButton2Click(Sender: TObject);
begin
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('select * from tb_boking where status="1"');
 ExecSQL;
 Active:= true;
 Open;
end;
end;

procedure TFrame10.DBGrid1CellClick(Column: TColumn);
var zsts,d :string; c : array [0..5] of Currency;
begin
zmobil := ADOQuery1.FieldByName('ID_mobil').AsString;
zsopir := ADOQuery1.FieldByName('ID_sopir').AsString;
zsts :=   ADOQuery1.FieldByName('Status').AsString;
c[0] := StrToCurr(ADOQuery1.FieldByName('Biaya_mobil').AsString);
c[1] := StrToCurr(ADOQuery1.FieldByName('Total_biaya').AsString);
c[2] := StrToCurr(ADOQuery1.FieldByName('Bayar').AsString);
c[3] := StrToCurr(ADOQuery1.FieldByName('Kembali').AsString);
c[4] := StrToCurr(ADOQuery1.FieldByName('Biaya_sopir').AsString);
{
// -  data qr
QuickReport13.CJVQrDbBarCode1.Texto := ADOQuery1.FieldByName('ID_boking').AsString;
QuickReport13.QRLabel14.Caption := ADOQuery1.FieldByName('Nama_pelanggan').AsString;
QuickReport13.QRLabel7.Caption := ADOQuery1.FieldByName('Nama_mobil').AsString;
QuickReport13.QRLabel8.Caption := ADOQuery1.FieldByName('ID_mobil').AsString;
QuickReport13.QRLabel16.Caption := ADOQuery1.FieldByName('Tanggal').AsString;
QuickReport13.QRLabel21.Caption := ADOQuery1.FieldByName('Tgl_pinjam').AsString;
QuickReport13.QRLabel22.Caption := ADOQuery1.FieldByName('Tgl_kembali').AsString;
QuickReport13.QRLabel23.Caption := ADOQuery1.FieldByName('Jml_hari').AsString;
QuickReport13.QRLabel25.Caption := 'Rp. ' + FormatCurr('#,##0',c[1]);
QuickReport13.QRLabel27.Caption := 'Rp. ' + FormatCurr('#,##0',c[2]);
QuickReport13.QRLabel29.Caption := 'Rp. ' + FormatCurr('#,##0',c[3]);
QuickReport13.QRLabel10.Caption := ADOQuery1.FieldByName('Nama_sopir').AsString;
QuickReport13.QRLabel11.Caption := ADOQuery1.FieldByName('ID_sopir').AsString;
QuickReport13.QRLabel9.Caption := 'Rp. ' + FormatCurr('#,##0',c[0]);
QuickReport13.QRLabel12.Caption := 'Rp. ' + FormatCurr('#,##0',c[4]);
QuickReport13.Preview; }
if (zsts = '1') then
 begin
  Label4.Caption := 'Belum Lunas';
 end
 else
 begin
 Label4.Caption := 'Sudah Lunas';
 end;
end;

procedure TFrame10.sDateEdit2Change(Sender: TObject);
begin
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('SELECT * FROM tb_boking WHERE Tanggal BETWEEN (:tgl1) AND (:tgl2) ORDER BY Tanggal ASC');
 Parameters.ParamByName('tgl1').Value:=FormatDateTime('dd/mm/yyyy',sDateEdit1.Date);
 Parameters.ParamByName('tgl2').Value:=FormatDateTime('dd/mm/yyyy',sDateEdit2.Date);
 Open;
end;
if  adoquery1.RecordCount > 0 then
 begin
  adoquery1.Open
 end
  else
  begin
  Application.MessageBox('Tidak Ada Data Penjualan di tanggal yang di filter','Info', mb_Ok + Mb_ICONINFORMATION);
end;
end;

procedure TFrame10.sButton3Click(Sender: TObject);
begin
 if (sComboBox1.Text = 'Semua Data') then
 begin
   // All data
   with QuickReport12.ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking');
    QuickReport12.QRLabel12.Caption := 'Semua Data';
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END all data
 end
 else
  if (sComboBox1.Text = 'Sedang Berjalan') then
 begin
   // data Sedang Berjalan
   with QuickReport12.ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where status="1"');
    QuickReport12.QRLabel12.Caption := 'Sedang Berjalan';
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END data Sedang Berjalan
 end
 else
 if (sComboBox1.Text = 'Sudah Di Kembalikan') then
 begin
   // data Sudah Di Kembalikan
   with QuickReport12.ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where status="0"');
    QuickReport12.QRLabel12.Caption := 'Sudah di Kembalikan';
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END Sudah Di Kembalikan
  end
  else
  if (sComboBox1.Text = 'Denda') then
 begin
   // data Sudah Di Kembalikan
   with QuickReport12.ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where SDenda="1"');
    QuickReport12.QRLabel12.Caption := 'Denda';
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END Sudah Di Kembalikan
  end
  else
  if (sComboBox1.Text = 'Mobil') then
 begin
   // data Sudah Di Kembalikan
   with QuickReport12.ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where ID_mobil like' + QuotedStr('%'+sEdit1.Text+'%'));
    QuickReport12.QRLabel12.Caption := 'Mobil';
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END Sudah Di Kembalikan
  end;
QuickReport12.Preview;
end;

procedure TFrame10.DBGrid1DblClick(Sender: TObject);
var zsts,d :string; c : array [0..5] of Currency;
begin
zmobil := ADOQuery1.FieldByName('ID_mobil').AsString;
zsopir := ADOQuery1.FieldByName('ID_sopir').AsString;
zsts :=   ADOQuery1.FieldByName('Status').AsString;
c[0] := StrToCurr(ADOQuery1.FieldByName('Biaya_mobil').AsString);
c[1] := StrToCurr(ADOQuery1.FieldByName('Total_biaya').AsString);
c[2] := StrToCurr(ADOQuery1.FieldByName('Bayar').AsString);
c[3] := StrToCurr(ADOQuery1.FieldByName('Kembali').AsString);
c[4] := StrToCurr(ADOQuery1.FieldByName('Biaya_sopir').AsString);
// -  data qr
QuickReport13.CJVQrDbBarCode1.Texto := ADOQuery1.FieldByName('ID_boking').AsString;
QuickReport13.QRLabel14.Caption := ADOQuery1.FieldByName('Nama_pelanggan').AsString;
QuickReport13.QRLabel7.Caption := ADOQuery1.FieldByName('Nama_mobil').AsString;
QuickReport13.QRLabel8.Caption := ADOQuery1.FieldByName('ID_mobil').AsString;
QuickReport13.QRLabel16.Caption := ADOQuery1.FieldByName('Tanggal').AsString;
QuickReport13.QRLabel21.Caption := ADOQuery1.FieldByName('Tgl_pinjam').AsString;
QuickReport13.QRLabel22.Caption := ADOQuery1.FieldByName('Tgl_kembali').AsString;
QuickReport13.QRLabel23.Caption := ADOQuery1.FieldByName('Jml_hari').AsString;
QuickReport13.QRLabel25.Caption := 'Rp. ' + FormatCurr('#,##0',c[1]);
QuickReport13.QRLabel27.Caption := 'Rp. ' + FormatCurr('#,##0',c[2]);
QuickReport13.QRLabel29.Caption := 'Rp. ' + FormatCurr('#,##0',c[3]);
QuickReport13.QRLabel10.Caption := ADOQuery1.FieldByName('Nama_sopir').AsString;
QuickReport13.QRLabel11.Caption := ADOQuery1.FieldByName('ID_sopir').AsString;
QuickReport13.QRLabel9.Caption := 'Rp. ' + FormatCurr('#,##0',c[0]);
QuickReport13.QRLabel12.Caption := 'Rp. ' + FormatCurr('#,##0',c[4]);
QuickReport13.Preview;
if (zsts = '1') then
 begin
  Label4.Caption := 'Belum Lunas';
 end
 else
 begin
 Label4.Caption := 'Sudah Lunas';
 end;
end;

procedure TFrame10.sComboBox1Change(Sender: TObject);
begin
 if (sComboBox1.Text = 'Semua Data') then
 begin
   // All data
   with ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking');
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END all data
 end
 else
  if (sComboBox1.Text = 'Sedang Berjalan') then
 begin
   // data Sedang Berjalan
   with ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where status="1"');
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END data Sedang Berjalan
 end
 else
 if (sComboBox1.Text = 'Sudah Di Kembalikan') then
 begin
   // data Sudah Di Kembalikan
   with ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where status="0"');
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END Sudah Di Kembalikan
  end
  else
  if (sComboBox1.Text = 'Denda') then
 begin
   // data Sudah Di Kembalikan
   with ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where SDenda="1"');
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END Sudah Di Kembalikan
  end
  else
  if (sComboBox1.Text = 'Mobil') then
 begin
   // data Sudah Di Kembalikan
   with ADOQuery1 do
   begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where ID_mobil like' + QuotedStr('%'+sEdit1.Text+'%'));
    ExecSQL;
    Active:= true;
    Open;
  end;
  // END Sudah Di Kembalikan
  end;
end;

procedure TFrame10.DBGrid2CellClick(Column: TColumn);
begin
sEdit1.Text := ADOQuery2.fieldbyname('ID_mobil').AsString ;
DBGrid2.Visible := false;
end;

procedure TFrame10.sEdit1DblClick(Sender: TObject);
begin
DBGrid2.Visible := True;
end;

procedure TFrame10.sEdit1Click(Sender: TObject);
begin
sedit1.SelectAll;
end;

end.
