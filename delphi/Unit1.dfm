object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exemplo de Consulta WS OMIE'
  ClientHeight = 469
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 30
    Width = 75
    Height = 13
    Caption = 'OMIE_APP_KEY'
  end
  object lbl2: TLabel
    Left = 16
    Top = 57
    Width = 95
    Height = 13
    Caption = 'OMIE_APP_SECRET'
  end
  object lbl3: TLabel
    Left = 136
    Top = 8
    Width = 136
    Height = 13
    Caption = 'Chaves de exemplo da Omie'
  end
  object memRequest: TMemo
    Left = 407
    Top = 8
    Width = 356
    Height = 73
    Lines.Strings = (
      'memRequest')
    TabOrder = 0
  end
  object memResponse: TMemo
    Left = 407
    Top = 87
    Width = 356
    Height = 117
    Lines.Strings = (
      'memResponse')
    TabOrder = 1
  end
  object editApp_key: TEdit
    Left = 136
    Top = 27
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object editApp_secret: TEdit
    Left = 136
    Top = 54
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 186
    Width = 771
    Height = 283
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Clientes'
      ExplicitLeft = -60
      ExplicitWidth = 281
      ExplicitHeight = 165
      object btnCadCliente: TButton
        Left = 170
        Top = 3
        Width = 161
        Height = 25
        Caption = 'Cadastrar Cliente'
        TabOrder = 0
        OnClick = btnCadClienteClick
      end
      object Button1: TButton
        Left = 3
        Top = 3
        Width = 161
        Height = 25
        Caption = 'Listar Clientes'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 337
        Top = 3
        Width = 161
        Height = 25
        Caption = 'Editar Cliente'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Bancos'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object memBancos: TMemo
        Left = 3
        Top = 34
        Width = 757
        Height = 218
        Align = alCustom
        Lines.Strings = (
          'memBancos')
        TabOrder = 0
      end
      object btnRequest: TButton
        Left = 12
        Top = 3
        Width = 130
        Height = 25
        Caption = 'Listar Bancos'
        TabOrder = 1
        OnClick = btnRequestClick
      end
      object btnLoop: TButton
        Left = 148
        Top = 3
        Width = 130
        Height = 25
        Caption = 'btnLoop'
        TabOrder = 2
        OnClick = btnLoopClick
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 244
    Width = 755
    Height = 217
    DataSource = dsClient
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object HTTPRIO: THTTPRIO
    OnAfterExecute = HTTPRIOAfterExecute
    OnBeforeExecute = HTTPRIOBeforeExecute
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 632
    Top = 16
  end
  object dsClient: TDataSource
    AutoEdit = False
    DataSet = CdsClient
    Left = 296
    Top = 112
  end
  object CdsClient: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 112
    object CdsClientcodigo_omie: TIntegerField
      FieldName = 'codigo_omie'
    end
    object CdsClientcodigo_integracao: TStringField
      FieldName = 'codigo_integracao'
    end
    object CdsClientcnpj_cpf: TStringField
      FieldName = 'cnpj_cpf'
    end
    object CdsClientrazao_social: TStringField
      FieldName = 'razao_social'
    end
    object CdsClientnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
    end
  end
end
