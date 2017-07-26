object Frame11: TFrame11
  Left = 0
  Top = 0
  Width = 878
  Height = 392
  TabOrder = 0
  object sGroupBox1: TsGroupBox
    Left = 16
    Top = 16
    Width = 425
    Height = 369
    Caption = 'Rincian Rental'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 224
      Width = 55
      Height = 13
      Caption = 'Nama Sopir'
    end
    object Label2: TLabel
      Left = 16
      Top = 264
      Width = 25
      Height = 13
      Caption = 'Mobil'
    end
    object sComboBox1: TsComboBox
      Left = 16
      Top = 24
      Width = 385
      Height = 21
      Alignment = taLeftJustify
      VerticalAlignment = taAlignTop
      ItemHeight = 15
      ItemIndex = -1
      TabOrder = 0
      Text = 'Kategori'
      Items.Strings = (
        'ID Boking'
        'Nama Pelanggan'
        'Nama Sopir')
    end
    object sEdit1: TsEdit
      Left = 16
      Top = 48
      Width = 265
      Height = 21
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 72
      Width = 385
      Height = 120
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
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
          FieldName = 'Jml_hari'
          Width = 20
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
        end>
    end
    object sButton1: TsButton
      Left = 344
      Top = 48
      Width = 57
      Height = 21
      Caption = 'Cari'
      TabOrder = 3
      OnClick = sButton1Click
    end
    object sEdit2: TsEdit
      Left = 16
      Top = 240
      Width = 385
      Height = 21
      TabOrder = 4
    end
    object sEdit3: TsEdit
      Left = 16
      Top = 200
      Width = 385
      Height = 21
      TabOrder = 5
    end
    object sEdit4: TsEdit
      Left = 16
      Top = 280
      Width = 385
      Height = 21
      TabOrder = 6
    end
    object sButton2: TsButton
      Left = 288
      Top = 48
      Width = 57
      Height = 21
      Caption = 'Refresh'
      TabOrder = 7
      OnClick = sButton2Click
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 448
    Top = 16
    Width = 361
    Height = 369
    Caption = 'Pengembalian Rental'
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 83
      Height = 13
      Caption = 'Total Biaya Sewa'
    end
    object Label4: TLabel
      Left = 16
      Top = 120
      Width = 61
      Height = 13
      Caption = 'Penggunaan'
    end
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Nama Pelanggan'
    end
    object Label6: TLabel
      Left = 296
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label6'
      Visible = False
    end
    object Label8: TLabel
      Left = 16
      Top = 208
      Width = 72
      Height = 30
      Caption = 'STATUS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 160
      Width = 86
      Height = 13
      Caption = 'Denda Kerusakan'
    end
    object Label7: TLabel
      Left = 144
      Top = 208
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object sEdit5: TsEdit
      Left = 16
      Top = 96
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object sEdit6: TsEdit
      Left = 16
      Top = 136
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object sEdit7: TsEdit
      Left = 184
      Top = 136
      Width = 153
      Height = 21
      TabOrder = 2
    end
    object sEdit8: TsEdit
      Left = 16
      Top = 40
      Width = 321
      Height = 21
      TabOrder = 3
    end
    object sEdit9: TsEdit
      Left = 16
      Top = 176
      Width = 321
      Height = 21
      TabOrder = 4
    end
    object sButton3: TsButton
      Left = 16
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 5
      OnClick = sButton3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 776
    Top = 352
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
    Left = 744
    Top = 352
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_boking  where status = '#39'1'#39)
    Left = 712
    Top = 352
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_boking'
    Left = 680
    Top = 352
  end
end
