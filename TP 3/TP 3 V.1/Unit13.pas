unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Pantalla_programa;

type
  TAsientos_borradores = class(TForm)
    lbl1: TLabel;
    Modificar_Cuenta1: TGroupBox;
    cbb1: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    lbl4: TLabel;
    edt2: TEdit;
    Modificar_Cuenta2: TGroupBox;
    btn2: TBitBtn;
    btn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cbb1Exit(Sender: TObject);
    procedure btn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Asientos_borradores: TAsientos_borradores;
  asiento: Integer;

implementation

uses Unit6;


{$R *.dfm}

procedure TAsientos_borradores.FormShow(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Clear;

      Pantalla_programa.Form2.ADOQuery.SQL.Clear;
      Pantalla_programa.Form2.ADOQuery.SQL.Add('Select Distinct AS_Id_Asiento, AS_Concepto_Asiento');
      Pantalla_programa.Form2.ADOQuery.SQL.Add('From borrador_Asientos');
      Pantalla_programa.Form2.ADOQuery.SQL.Add('where AS_Borrador='+#39+'B'+#39);
      Pantalla_programa.Form2.ADOQuery.Open;

While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
        cbb1.AddItem(Pantalla_programa.Form2.ADOQuery.FieldByName('As_Concepto_Asiento').Value,cbb1);
        Pantalla_programa.Form2.ADOQuery.Next;
      end;
end;

procedure TAsientos_borradores.btn2Click(Sender: TObject);
begin
asientos_borradores.hide;
Form10.show;
end;

procedure TAsientos_borradores.cbb1Exit(Sender: TObject);
var              
  nom: string;
begin
if not (cbb1.Text = '')
  then
    begin
      nom:= cbb1.Text;
      Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Borrador_Asientos where AS_concepto_asiento='+#39+nom+#39);
      Pantalla_programa.Form2.ADOQuery.Open;

      Pantalla_programa.Form2.ADOquery.Last;
      edt1.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Id_Asiento').Value;
      edt2.Text:=(Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Num_Pase').Value);
      asiento:=Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Id_Asiento').Value;
    end;
end;



procedure TAsientos_borradores.btn1Click(Sender: TObject);
var
  numero: integer;
  debe,haber,total: real;
begin
form10.Show;
          numero:= 0;
Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Borrador_Asientos where AS_id_asiento='+ inttostr(asiento));
Pantalla_programa.Form2.ADOQuery.Open;
Pantalla_programa.Form2.ADOquery.First;

 While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
        Form10.edt1.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Concepto_Asiento').Value;
        Form10.edt2.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Id_Cuenta').Value;
        form10.edt5.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Id_Asiento').Value;

        Form10.TStringGrid.Cells [0,numero]:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_num_pase').Value;
        Form10.TStringGrid.Cells [1,numero]:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_id_cuenta').Value;
        Form10.TStringGrid.Cells [2,numero]:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_leyenda_pase').Value;

        if (Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Tipo_Saldo').Value = 'DEBE')
          then
            Form10.TStringGrid.Cells [3,numero]:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Importe_as').Value
          else
            if (Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Tipo_Saldo').Value = 'HABER')
             then
              Form10.TStringGrid.Cells [4,numero]:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Importe_as').Value;

        Form10.edt7.Text:= (Pantalla_programa.Form2.ADOQuery.FieldByName('AS_num_pase').Value)+1;
        form10.edt8.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_id_cuenta').Value;

                     DecimalSeparator:='.';
            if (Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Tipo_Saldo').Value = 'DEBE')
              then
                begin
                  debe:= debe + StrToFloat(Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Importe_as').Value);
                  Form10.lbl4.Caption:= FloatToStr(debe);
                end
              else
                if (Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Tipo_Saldo').Value = 'HABER')
                  then
                    begin
                       haber:= haber + strtofloat(Pantalla_programa.Form2.ADOQuery.FieldByName('AS_Importe_as').Value);
                       form10.lbl7.Caption:= FloatToStr(haber);
                    end;

          total:= debe - haber;
          Form10.lbl21.Caption:= (FormatFloat('0.00',total));
                                                             
        numero:= numero+1;
        Pantalla_programa.Form2.ADOQuery.Next;
      end;

Form10.Modificar_Cuenta1.Enabled:= true;
Form10.impresora2.Enabled:= true;
Form10.edt1.Enabled:= false;
form10.edt2.Enabled:= False;
form10.btn4.Enabled:= false;
Unit6.numero1:= Numero;
unit6.tipo:= true;
Asientos_borradores.Hide;
end;

end.
