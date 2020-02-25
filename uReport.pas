unit uReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QrAngLbl;

type
  TFrmReport = class(TForm)
    qrReport: TQuickRep;
    QRBand2: TQRBand;
    QRShape19: TQRShape;
    QRShape15: TQRShape;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLInfo1: TQRLabel;
    QRShape4: TQRShape;
    qrlValor: TQRLabel;
    qrlExtenso: TQRLabel;
    QRShape5: TQRShape;
    qrlEmitente: TQRLabel;
    qrlEndereco: TQRLabel;
    qrlNumero: TQRLabel;
    qrlVlr: TQRLabel;
    qrlVenc: TQRLabel;
    qrlCPF: TQRLabel;
    QRShape6: TQRShape;
    qrlAss: TQRLabel;
    QRShape18: TQRShape;
    qrlLocalPagto: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    qrlCidadePag: TQRLabel;
    qrlDevedor: TQRLabel;
    qrlEnd: TQRLabel;
    qrlcpfDevedor: TQRLabel;
    qrlEmissao: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRAngledLabel3: TQRAngledLabel;
    QRAngledLabel6: TQRAngledLabel;
    qrlAval1: TQRAngledLabel;
    TelAval1: TQRAngledLabel;
    QRlcpfAval1: TQRAngledLabel;
    QRLabel1: TQRLabel;
    qrlTelDev: TQRLabel;
    QRLabel5: TQRLabel;
    qrlObs: TQRLabel;
    qrlcpfass: TQRLabel;
    procedure qrReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrReportNeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReport: TFrmReport;
  i: integer;
  VenctoPromissoria,PrimeiroVencto: TDateTime;
  mes: String;
  mesN: integer;
implementation

uses uprincipal;

{$R *.dfm}

procedure TFrmReport.qrReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  
begin
i:= 1;
VenctoPromissoria  := FrmPrincipal.dtVenc.DateTime;
mes := FormatDateTime('mmmm',FrmPrincipal.dtVenc.Date);
mesN := StrToInt(FormatDateTime('mm',FrmPrincipal.dtVenc.Date));
end;

procedure TFrmReport.qrReportNeedData(Sender: TObject;
  var MoreData: Boolean);
  var nParc: integer; //Nr de parcelas
  var MesAnterior,MesVencto,dia,ano,VenctoCorreto,mesAtual,mesProxVenc : String;


begin

 nparc:= StrToInt(FrmPrincipal.ParcINI.Text);
  with FrmPrincipal do begin

     qrlNumero.Caption := IntToStr(i) + '/' + IntToStr(nparc);
     qrlAval1.Caption := edAvalista1.Text;
     
     QRlcpfAval1.Caption := cpfAval1.Text;

     TelAval1.Caption := edTelav1.Text;

     //Dia := FormatDateTime('dd',dtVenc.Date);
     Dia := FormatDateTime('dd',VenctoPromissoria);
     //mes := FormatDateTime('mmmm',dtVenc.Date);
     mes := FormatDateTime('mmmm',VenctoPromissoria);
     Ano := FormatDateTime('yyyy',dtVenc.Date);

     QRLInfo1.Caption := 'Aos ' +dia+ ' dias do mês de '+mes+' de '+ano+', por esta única via de NOTA PROMISSÓRIA, pagarei(remos) a : '+
     EdCredor.Text + ' , CPF/CNPJ : ' + edCpfcredor.Text + ', ou à sua ordem, em moeda corrente deste país, a quantia de :';

     qrlVlr.Caption := edValor.Text;
     qrlCidadePag.Caption := edEmissao.text;
     
     qrlEmissao.Caption := FormatDateTime('dd/mm/yyyy',dtEmissao.DateTime);

     qrlVenc.Caption := FormatDateTime('dd/mm/yyyy',VenctoPromissoria);

     mesAtual := FormatDateTime('mm',VenctoPromissoria);

     qrlExtenso.Caption := edExtenso.Text;
     qrlDevedor.Caption := edDevedor.Text;
     qrlEnd.Caption := edEnddevedor.Text;
     qrlObs.Caption := edObs.Text;
     qrlcpfDevedor.Caption := edcpfDevedor.Text;
     qrlTelDev.Caption := edTelDevPrinc.Text;
     QRLAss.Caption := edDevedor.Text;
     qrlCPFAss.Caption := 'CPF: '+qrlcpfDevedor.Caption;

     if (i <=nParc) then begin
      MoreData := true;
      inc(i);
      //dtVenc.DateTime := dtVenc.DateTime + 30;
      if ((Dia = '29') or (Dia='30') or (Dia='31')) and
        (mesAtual = '01') then Dia:='28';

      VenctoPromissoria := VenctoPromissoria + 30;

      mesProxVenc :=  FormatDateTime('mm',VenctoPromissoria);


      FormatDateTime('mmmm',dtVenc.Date);
       //if ((Dia = '29') or (Dia='30') or (Dia='31')) and
        //(mesProxVenc = '02') then Dia:='28';

      if (Dia = '31') and
      (   
         (mesProxVenc = '04') or
         (mesProxVenc = '06') or
         (mesProxVenc = '09') or
         (mesProxVenc = '11')  ) then Dia := '30';




      VenctoCorreto :=  Dia + FormatDateTime('/mm/yyyy',VenctoPromissoria);
      VenctoPromissoria := StrTodate(VenctoCorreto);
     end;

     qrlEmissao.Caption := edEmissao.Text +', '+ FormatDateTime('dd " de " mmmm " de " yyyy',dtEmissao.DateTime);
    
   end;

end;

end.
