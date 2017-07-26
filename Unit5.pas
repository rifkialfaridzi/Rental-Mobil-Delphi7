unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, DB, ADODB,
  StdCtrls, sButton,TeePrevi;

type
  TFrame5 = class(TFrame)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure FrameClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame5.FrameClick(Sender: TObject);
begin
Series1.DataSource := ADOQuery1;
Series1.XLabelsSource := 'Tanggal';
Series1.YValues.ValueSource := 'sjum';
end;

procedure TFrame5.sButton1Click(Sender: TObject);
begin
ChartPreview(Self, DBChart1);
end;

procedure TFrame5.sButton2Click(Sender: TObject);
begin
with ADOQuery1 do
begin
 Active := false;
 Close;
 SQL.Clear;
 SQL.Add('SELECT SUM(Total_biaya) As sjum,Tanggal FROM tb_boking group by Tanggal');
 ExecSQL;
 Active:= true;
 Open;
end;
end;

end.
