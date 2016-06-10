unit UnitFormClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormClient = class(TForm)
    edtCodSisLocal: TEdit;
    lblCod: TLabel;
    edtcpf_cnpj: TEdit;
    lblcpf_cnpj: TLabel;
    edtRazao: TEdit;
    Label1: TLabel;
    edtFantasia: TEdit;
    Label2: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClient: TFormClient;

implementation

{$R *.dfm}

procedure TFormClient.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormClient.btnOkClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

end.
