object Frame8: TFrame8
  Left = 0
  Top = 0
  Width = 816
  Height = 346
  TabOrder = 0
  object sGroupBox1: TsGroupBox
    Left = 360
    Top = 8
    Width = 449
    Height = 337
    Caption = 'Data Pelanggan'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 72
      Width = 433
      Height = 120
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_pelanggan'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nama_pelanggan'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alamat_pelanggan'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NIK_pelanggan'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tlp_pelanggan'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Width = 50
          Visible = True
        end>
    end
    object sButton4: TsButton
      Left = 8
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
      OnClick = sButton4Click
    end
    object sButton5: TsButton
      Left = 88
      Top = 208
      Width = 121
      Height = 25
      Caption = 'Update'
      Enabled = False
      TabOrder = 2
      OnClick = sButton5Click
    end
    object sButton6: TsButton
      Left = 368
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 3
      OnClick = sButton6Click
    end
    object sEdit10: TsEdit
      Left = 8
      Top = 40
      Width = 305
      Height = 21
      TabOrder = 4
    end
    object sComboBox2: TsComboBox
      Left = 8
      Top = 16
      Width = 433
      Height = 21
      Alignment = taLeftJustify
      VerticalAlignment = taAlignTop
      ItemHeight = 15
      ItemIndex = -1
      TabOrder = 5
      Text = 'Kategori'
      Items.Strings = (
        'ID Pelanggan'
        'Nama Pelanggan'
        'Alamat')
    end
    object sButton7: TsButton
      Left = 320
      Top = 40
      Width = 57
      Height = 21
      Caption = 'Refresh'
      TabOrder = 6
      OnClick = sButton7Click
    end
    object sButton8: TsButton
      Left = 384
      Top = 40
      Width = 57
      Height = 21
      Caption = 'Cari'
      TabOrder = 7
      OnClick = sButton8Click
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 337
    Caption = 'Input Data Pelanggan'
    TabOrder = 1
    object sLabel2: TsLabel
      Left = 8
      Top = 48
      Width = 34
      Height = 15
      Caption = 'Nama '
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
    end
    object sLabel1: TsLabel
      Left = 8
      Top = 88
      Width = 19
      Height = 15
      Caption = 'NIK'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
    end
    object sLabel4: TsLabel
      Left = 8
      Top = 128
      Width = 59
      Height = 15
      Caption = 'Nomor Tlp.'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
    end
    object sLabel3: TsLabel
      Left = 8
      Top = 168
      Width = 37
      Height = 15
      Caption = 'Alamat'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
    end
    object sButton1: TsButton
      Left = 8
      Top = 304
      Width = 129
      Height = 25
      Caption = 'Simpan'
      Enabled = False
      TabOrder = 0
      OnClick = sButton1Click
    end
    object sButton2: TsButton
      Left = 144
      Top = 304
      Width = 73
      Height = 25
      Caption = '+New'
      TabOrder = 1
      OnClick = sButton2Click
    end
    object sButton3: TsButton
      Left = 224
      Top = 304
      Width = 97
      Height = 25
      Caption = 'Batal'
      TabOrder = 2
    end
    object sEdit1: TsEdit
      Left = 8
      Top = 24
      Width = 313
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object sEdit2: TsEdit
      Left = 8
      Top = 64
      Width = 177
      Height = 21
      TabOrder = 4
    end
    object sComboBox1: TsComboBox
      Left = 192
      Top = 64
      Width = 129
      Height = 21
      Alignment = taLeftJustify
      VerticalAlignment = taAlignTop
      Enabled = False
      ItemHeight = 15
      ItemIndex = -1
      TabOrder = 5
      Text = 'Jenis Kelamin'
    end
    object sEdit5: TsEdit
      Left = 8
      Top = 104
      Width = 313
      Height = 21
      TabOrder = 6
    end
    object sEdit4: TsEdit
      Left = 8
      Top = 144
      Width = 313
      Height = 21
      TabOrder = 7
      OnKeyPress = sEdit4KeyPress
    end
    object sMemo1: TsMemo
      Left = 8
      Top = 184
      Width = 313
      Height = 65
      TabOrder = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 368
    Top = 304
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
    Left = 400
    Top = 304
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_pelanggan'
    Left = 432
    Top = 304
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_pelanggan')
    Left = 464
    Top = 304
  end
end
