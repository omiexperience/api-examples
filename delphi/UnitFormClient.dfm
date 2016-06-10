object FormClient: TFormClient
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 274
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCod: TLabel
    Left = 24
    Top = 48
    Width = 107
    Height = 13
    Caption = 'C'#243'digo Sistema - Local'
  end
  object lblcpf_cnpj: TLabel
    Left = 24
    Top = 94
    Width = 54
    Height = 13
    Caption = 'CNPJ - CPF'
  end
  object Label1: TLabel
    Left = 24
    Top = 142
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label2: TLabel
    Left = 24
    Top = 190
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
  end
  object Label3: TLabel
    Left = 24
    Top = 0
    Width = 60
    Height = 13
    Caption = 'C'#243'digo Omie'
  end
  object Label4: TLabel
    Left = 151
    Top = 22
    Width = 80
    Height = 13
    Caption = 'Somente Update'
  end
  object edtCodSisLocal: TEdit
    Left = 24
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtcpf_cnpj: TEdit
    Left = 24
    Top = 113
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object edtRazao: TEdit
    Left = 24
    Top = 161
    Width = 409
    Height = 21
    TabOrder = 2
  end
  object edtFantasia: TEdit
    Left = 24
    Top = 209
    Width = 409
    Height = 21
    TabOrder = 3
  end
  object btnOk: TBitBtn
    Left = 348
    Top = 241
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 4
    OnClick = btnOkClick
  end
  object btnCancel: TBitBtn
    Left = 444
    Top = 241
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object Edit1: TEdit
    Left = 24
    Top = 19
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 6
  end
end
