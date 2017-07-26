object Frame10: TFrame10
  Left = 0
  Top = 0
  Width = 828
  Height = 401
  TabOrder = 0
  object Label1: TLabel
    Left = 152
    Top = 280
    Width = 19
    Height = 13
    Caption = 'Dari'
  end
  object Label2: TLabel
    Left = 152
    Top = 304
    Width = 35
    Height = 13
    Caption = 'Sampai'
  end
  object Label3: TLabel
    Left = 96
    Top = 280
    Width = 37
    Height = 13
    Caption = 'Filter :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sLabel1: TsLabel
    Left = 8
    Top = 12
    Width = 62
    Height = 25
    Caption = 'Status :'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
  end
  object Label4: TLabel
    Left = 80
    Top = 12
    Width = 51
    Height = 25
    Caption = 'Value'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 809
    Height = 209
    Cursor = crHandPoint
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_boking'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_pelanggan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_mobil'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Biaya_mobil'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_mobil'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tgl_pinjam'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tgl_kembali'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_sopir'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_sopir'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jml_hari'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_biaya'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bayar'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kembali'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Width = 30
        Visible = True
      end>
  end
  object sButton1: TsButton
    Left = 744
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 8
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = sButton2Click
  end
  object sDateEdit1: TsDateEdit
    Left = 200
    Top = 276
    Width = 129
    Height = 21
    AutoSize = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
  end
  object sDateEdit2: TsDateEdit
    Left = 200
    Top = 300
    Width = 129
    Height = 21
    AutoSize = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnChange = sDateEdit2Change
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
  end
  object sButton3: TsButton
    Left = 672
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 5
    OnClick = sButton3Click
  end
  object sComboBox1: TsComboBox
    Left = 672
    Top = 16
    Width = 145
    Height = 21
    Alignment = taLeftJustify
    VerticalAlignment = taAlignTop
    ItemHeight = 15
    ItemIndex = -1
    TabOrder = 6
    Text = 'Sort By'
    OnChange = sComboBox1Change
    Items.Strings = (
      'Semua Data'
      'Sedang Berjalan'
      'Sudah Di Kembalikan'
      'Denda'
      'Mobil')
  end
  object DBGrid2: TDBGrid
    Left = 552
    Top = 40
    Width = 265
    Height = 113
    DataSource = DataSource2
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_mobil'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_mobil'
        Visible = True
      end>
  end
  object sEdit1: TsEdit
    Left = 552
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Cari Data Mobil'
    OnClick = sEdit1Click
    OnDblClick = sEdit1DblClick
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 544
    Top = 264
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
    Left = 576
    Top = 264
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_boking'
    Left = 608
    Top = 264
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_boking')
    Left = 640
    Top = 264
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_mobil')
    Left = 544
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 576
    Top = 296
  end
end
