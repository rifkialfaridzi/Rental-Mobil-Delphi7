unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, sButton, ADODB, Grids, DBGrids, sEdit, sComboBox, DB,
  sGroupBox;

type
  TFrame11 = class(TFrame)
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    sComboBox1: TsComboBox;
    sEdit1: TsEdit;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    sButton1: TsButton;
    sEdit2: TsEdit;
    Label1: TLabel;
    sEdit3: TsEdit;
    Label2: TLabel;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sEdit6: TsEdit;
    Label3: TLabel;
    sEdit7: TsEdit;
    Label4: TLabel;
    Label5: TLabel;
    sEdit8: TsEdit;
    Label6: TLabel;
    Label8: TLabel;
    sEdit9: TsEdit;
    Label9: TLabel;
    sButton2: TsButton;
    sButton3: TsButton;
    Label7: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  var zmobil,zsopir:string;
implementation

{$R *.dfm}

procedure TFrame11.DBGrid1CellClick(Column: TColumn);
var Stgl,Stotal,Scount,Sharga:string;
begin
zmobil := ADOQuery1.FieldByName('ID_mobil').AsString;
zsopir := ADOQuery1.FieldByName('ID_sopir').AsString;

sEdit3.Text := ADOQuery1.FieldByName('ID_boking').AsString;
sEdit2.Text := ADOQuery1.FieldByName('Nama_sopir').AsString;
sEdit4.Text := ADOQuery1.FieldByName('Nama_mobil').AsString;
sEdit5.Text := ADOQuery1.FieldByName('Total_biaya').AsString;
sEdit6.Text := ADOQuery1.FieldByName('Tgl_pinjam').AsString;
sEdit7.Text := ADOQuery1.FieldByName('Tgl_kembali').AsString;
sEdit8.Text := ADOQuery1.FieldByName('Nama_pelanggan').AsString;
Label6.Caption := FormatDateTime('DD/MM/YYYY',NOW);
Stgl := ADOQuery1.FieldByName('Jml_hari').AsString;

// CEK Status
Stotal := FloatToStr(StrToDate(Label6.Caption)- StrToDate(sEdit6.Text));
Label7.Caption := Stotal + ' ' + Stgl;
if ( StrToInt( Stotal) <= StrToInt( Stgl) ) then
 begin
  Label8.Caption := 'Tidak Ada Denda';
 end
 else
 begin
  Scount := IntToStr( StrToInt(Stotal) - StrToInt(Stgl));
  Sharga := IntToStr( StrToInt(Scount) * StrToInt('500000'));
  Label8.Caption :='Rp- ' + FormatCurr('#,##0', StrToCurr(Sharga));
 end;

end;

procedure TFrame11.sButton2Click(Sender: TObject);
begin
DBGrid1.Enabled := true;
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Text := 'select * from tb_boking where status like '+quotedstr('%'+'1'+'%');
 ExecSQL;
 Active:= true;
 Open;
end;
end;

procedure TFrame11.sButton3Click(Sender: TObject);
begin
with ADOQuery1 do begin
 Active := false;
 Close;
 SQL.Text:='UPDATE tb_boking set Status="0",SDenda="1",Denda_A="'+Label8.Caption+'",Denda_B="'+sEdit9.text+'"  WHERE ID_boking="'+sEdit3.Text+'"';
 ExecSQL;
 SQL.Text:='UPDATE tb_mobil set Status="0" WHERE ID_mobil="'+zmobil+'"';
 ExecSQL;
 SQL.Text:='UPDATE tb_sopir set Status="0" WHERE ID_sopir="'+zsopir+'"';
 ExecSQL;
 SQL.Text := 'select * from tb_boking where status like '+quotedstr('%'+'1'+'%');
 Active := true;
 open;
end;

end;

procedure TFrame11.sButton1Click(Sender: TObject);
begin
if ( sComboBox1.Text = 'ID Boking' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where ID_boking like' + QuotedStr('%'+sEdit1.Text+'%'));
    Active := true;
 end;
 // --- ID
 end
 else
  if ( sComboBox1.Text = 'Nama Pelanggan' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where Nama_pelanggan like' + QuotedStr('%'+sEdit1.Text+'%'));
    Active := true;
 end;
 // --- Nama
 end
 else
  if ( sComboBox1.Text = 'Nama Sopir' ) then
 begin
  With ADOQuery1 do
  begin
    Active := false;
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_boking where Nama_sopir like' + QuotedStr('%'+sEdit1.Text+'%'));
    Active := true;
 end;
 // --- Alamat
 end;
end;

end.
