object Frame5: TFrame5
  Left = 0
  Top = 0
  Width = 826
  Height = 387
  TabOrder = 0
  OnClick = FrameClick
  object DBChart1: TDBChart
    Left = 32
    Top = 56
    Width = 785
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -19
    Title.Font.Name = 'Segoe UI Semibold'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Rekab Data Transaksi')
    BottomAxis.Title.Caption = 'Tanggal'
    LeftAxis.Title.Caption = 'Jumlah '
    TabOrder = 0
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object sButton1: TsButton
    Left = 32
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 112
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = sButton2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:/Pemrograman/Des' +
      'ktop Programing/Project/uts_rental mobil/database/dbRental.accdb' +
      ';Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SUM(Total_biaya) As sjum,Tanggal FROM tb_boking group by ' +
        'Tanggal'
      '')
    Left = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 64
  end
end
