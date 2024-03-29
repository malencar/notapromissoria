unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CompButton, StdCtrls, Buttons, ComCtrls, Mask, CompEdit,uReport,um,
  uAbout;

type
  TFrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    lbNome: TLabel;
    lbEndereco: TLabel;
    lbCidade: TLabel;
    edDevedor: TCompEdit;
    edEnddevedor: TCompEdit;
    edEmissao: TCompEdit;
    GroupBox2: TGroupBox;
    lbVend: TLabel;
    lbExtenso: TLabel;
    lbParcelas: TLabel;
    lbValor: TLabel;
    lbEmissao: TLabel;
    edExtenso: TCompEdit;
    ParcINI: TCompEdit;
    edValor: TCompEdit;
    dtVenc: TDateTimePicker;
    dtEmissao: TDateTimePicker;
    cbGerar: TCompButton;
    cbFechar: TCompButton;
    cbLimpaCampos: TCompButton;
    CompButton1: TCompButton;
    Label3: TLabel;
    edCredor: TCompEdit;
    Label4: TLabel;
    edcpfCredor: TCompEdit;
    Label7: TLabel;
    edPagavel: TCompEdit;
    Label8: TLabel;
    edcpfDevedor: TCompEdit;
    Label1: TLabel;
    edAvalista1: TCompEdit;
    Label2: TLabel;
    cpfAval1: TCompEdit;
    Label9: TLabel;
    edTelav1: TCompEdit;
    btTeste: TButton;
    Label11: TLabel;
    edTelDevPrinc: TCompEdit;
    Label5: TLabel;
    edObs: TCompEdit;
    Label6: TLabel;
    Label10: TLabel;
    procedure cbGerarClick(Sender: TObject);
    procedure cbFecharClick(Sender: TObject);
    procedure edValorReturnKey(var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure CompButton1Click(Sender: TObject);
    procedure cbLimpaCamposClick(Sender: TObject);
    procedure ParcINIReturnKey(var Accept: Boolean);
    procedure edExtensoReturnKey(var Accept: Boolean);
    procedure edCredorReturnKey(var Accept: Boolean);
    procedure edcpfCredorReturnKey(var Accept: Boolean);
    procedure edPagavelReturnKey(var Accept: Boolean);
    procedure edDevedorReturnKey(var Accept: Boolean);
    procedure edAvalista1ReturnKey(var Accept: Boolean);
    procedure edcpfDevedorReturnKey(var Accept: Boolean);
    procedure cpfAval1ReturnKey(var Accept: Boolean);
    procedure edTelav1ReturnKey(var Accept: Boolean);
    procedure edAvalista2ReturnKey(var Accept: Boolean);
    procedure dtEmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure dtVencKeyPress(Sender: TObject; var Key: Char);
    procedure btTesteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}



procedure TFrmPrincipal.cbGerarClick(Sender: TObject);
begin
  if (ParcINI.Text = '0') or (ParcINI.Text = '')  then begin
   ShowMessage('Por favor, preencha a Quantidade de Notas Promiss�rias e demais campos.');
   exit;
  end
  else begin
   PrimeiroVencto := dtVenc.DateTime;
   FrmReport.qrReport.Preview ;
   dtVenc.DateTime := PrimeiroVencto ;
  end;
end;

procedure TFrmPrincipal.cbFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmPrincipal.edValorReturnKey(var Accept: Boolean);
begin
 edExtenso.Text := um.valorPorExtenso(edValor.AsFloat);
  edExtenso.SetFocus;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin

  dtEmissao.Date := date;
  //dtVenc.Date := date + 30;
  edExtenso.Text := um.valorPorExtenso(edValor.AsFloat);

end;

procedure TFrmPrincipal.CompButton1Click(Sender: TObject);
begin
 FrmAbout.ShowModal;
end;

procedure TFrmPrincipal.LimparCampos;
begin
    edDevedor.clear;
    edEnddevedor.clear;
    edExtenso.clear;
    ParcINI.text := '1';
    edValor.clear;
    edCredor.clear;
    edcpfCredor.clear;
    edPagavel.clear;
    edObs.Clear;
    edcpfDevedor.Text:= ' ';
    edTelDevPrinc.Text := ' ';
    edAvalista1.Text:= ' ';
    cpfAval1.Text:= ' ';
    edEmissao.Text := ' ';


    edTelav1.Text:= ' ';

end;

procedure TFrmPrincipal.cbLimpaCamposClick(Sender: TObject);
begin
 LimparCampos;
end;

procedure TFrmPrincipal.ParcINIReturnKey(var Accept: Boolean);
begin
 dtEmissao.SetFocus;
end;

procedure TFrmPrincipal.edExtensoReturnKey(var Accept: Boolean);
begin
 edCredor.SetFocus;
end;

procedure TFrmPrincipal.edCredorReturnKey(var Accept: Boolean);
begin
 edcpfCredor.SetFocus;
end;

procedure TFrmPrincipal.edcpfCredorReturnKey(var Accept: Boolean);
begin
 edPagavel.SetFocus;
end;

procedure TFrmPrincipal.edPagavelReturnKey(var Accept: Boolean);
begin
 edDevedor.SetFocus;
end;

procedure TFrmPrincipal.edDevedorReturnKey(var Accept: Boolean);
begin
 edAvalista1.SetFocus;
end;

procedure TFrmPrincipal.edAvalista1ReturnKey(var Accept: Boolean);
begin
 edcpfDevedor.SetFocus;
end;

procedure TFrmPrincipal.edcpfDevedorReturnKey(var Accept: Boolean);
begin
 cpfAval1.SetFocus;
end;

procedure TFrmPrincipal.cpfAval1ReturnKey(var Accept: Boolean);
begin
 edTelav1.SetFocus;
end;

procedure TFrmPrincipal.edTelav1ReturnKey(var Accept: Boolean);
begin
 edEnddevedor.SetFocus;
end;

procedure TFrmPrincipal.edAvalista2ReturnKey(var Accept: Boolean);
begin
 edEmissao.SetFocus;

end;

procedure TFrmPrincipal.dtEmissaoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  dtVenc.SetFocus;
end;

procedure TFrmPrincipal.dtVencKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  edValor.SetFocus;
end;

procedure TFrmPrincipal.btTesteClick(Sender: TObject);
begin
    edDevedor.Text := 'WELLINGTON DE SOUZA RIBEIRO';
    edEnddevedor.Text := 'RUA 5 QUADRA D, CASA 44 CONJUNTO VILA MUNICIPAL - ADRIAN�POLIS, CEP 69077-120, SEGUNDA ETAPA LADO DIREITO';
    edValor.Text := '245.288,78';
    edExtenso.Text := um.valorPorExtenso(edValor.AsFloat);
    ParcINI.text := '6';

    edCredor.Text := 'ERICKA MARTINELY DA SILVA BITTENCOURT OLIVEIRA ';
    edcpfCredor.Text := '123.456.789-00';
    edPagavel.Text := 'MANAUS';
    edObs.Text := 'CLIENTE OPTOU POR PAGAMENTO NO ESCRIT�RIO. AS DEMAIS PARCELAS SER�O DESCONTADAS EM CONTA CORRENTE, MEDIANTE AUTORIZA��O DO MESMO.';
    edcpfDevedor.Text := '111.222.333-44';
    edTelDevPrinc.Text := '9988-8877';
    edAvalista1.Text := 'LUCIANO HUCK';
    cpfAval1.Text := '222.333.444-55';
    edTelav1.Text := '3234-5678';
    edEmissao.Text := 'MANAUS';
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
 dtVenc.Date := date + 30;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
//   ShowMessage('Clique no Bot�o '+QuotedStr('Preenchimento de teste')+ ' para gerar algumas notas como exemplo');
end;

end.
