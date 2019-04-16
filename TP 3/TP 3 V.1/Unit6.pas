unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DB, ADODB, Libreria_Validaciones;

type
  TForm10 = class(TForm)
    impresora1: TGroupBox;
    impresora2: TGroupBox;
    lbl6: TLabel;
    TStringGrid: TStringGrid;
    lbl8: TLabel;
    edt5: TEdit;
    impresora3: TGroupBox;
    btn10: TBitBtn;
    btn11: TBitBtn;
    btn12: TBitBtn;
    btn1: TBitBtn;
    lbl9: TLabel;
    edt6: TEdit;
    Modificar_Cuenta1: TGroupBox;
    lbl10: TLabel;
    edt7: TEdit;
    lbl11: TLabel;
    edt8: TEdit;
    lbl12: TLabel;
    edt9: TEdit;
    lbl13: TLabel;
    edt10: TEdit;
    lbl14: TLabel;
    edt11: TEdit;
    lbl15: TLabel;
    lbl16: TLabel;
    edt13: TEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    edt14: TEdit;
    Modificar_Cuenta2: TGroupBox;
    btn3: TBitBtn;
    cbb1: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    Modificar_Cuenta3: TGroupBox;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TBitBtn;
    Modificar_Cuenta4: TGroupBox;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt13KeyPress(Sender: TObject; var Key: Char);
    procedure edt2Exit(Sender: TObject);
    procedure edt2Enter(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  numero,numero1,asiento: integer;
  debe,haber,total: real;
  tipo: Boolean;


implementation

uses Pantalla_programa, Unit9, Unit13;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
  if unit6.tipo = True
    then
      ShowMessage('Esta realizando movimientos, no puede volver atras, debe cancelar operacion.')
    else
      begin
        form11.show;
        form10.Hide;
      end;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
asientos_borradores.show;
Form10.Hide;
end;

procedure TForm10.btn4Click(Sender: TObject);
var
  nom: string;
begin

if (edt1.Text = '') or (edt2.Text = '')
  then
    ShowMessage('Debe ingresar un motivo para el asiento nuevo')
  else
    begin
     Modificar_Cuenta1.Enabled:=true;
     modificar_cuenta2.Enabled:= true;


      nom:= edt2.Text;
      Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta where codigo_Cuenta='+#39+nom+#39);
      Pantalla_programa.Form2.ADOQuery.Open;
      edt8.Text:= nom;
      lbl18.Caption:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nombre_Cuenta').Value;
      btn4.Enabled:= false;
    end;

end;

procedure TForm10.btn3Click(Sender: TObject);
begin

  if (edt9.Text = '') or (edt10.Text = '') or (edt11.Text = '') or (cbb1.ItemIndex = -1) or (edt13.Text='')
    then
      showmessage('Debe completar todos los campos del pase')
    else
      begin

            unit6.tipo:= True;
            TStringGrid.Cells [0,numero1]:= edt7.Text;
            TStringGrid.Cells [1,numero1]:= edt8.Text;
            TStringGrid.Cells [2,numero1]:= edt14.Text;


            if cbb1.Text = 'DEBE'
              then
                TStringGrid.Cells [3,numero1]:= edt13.Text
              else
                if cbb1.Text = 'HABER'
                  then
                   TStringGrid.Cells [4,numero1]:= edt13.Text ;

            /////
                      DecimalSeparator:='.';
            if cbb1.Text = 'DEBE'
              then
                begin
                  unit6.debe:= unit6.debe + StrToFloat(edt13.Text);
                  lbl4.Caption:= FloatToStr(unit6.debe);
                end
              else
                if cbb1.Text = 'HABER'
                  then
                    begin
                       unit6.haber:=unit6.haber + strtofloat(edt13.Text);
                       lbl7.Caption:= FloatToStr(unit6.haber);
                    end;


           //Ingreso Asiento Borrador
          Pantalla_Programa.Form2.ADOquery.SQL.Clear;
          Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Borrador_Asientos Values ('+edt5.Text+','+edt7.Text+','+#39+edt8.Text+#39','+#39+edt1.Text+#39+','+edt13.Text+','+#39+cbb1.Text+#39+','+#39+edt14.Text+#39+','+#39+edt9.Text+#39+','+#39+edt10.Text+#39+','+#39+'B'+#39+')');
          Pantalla_Programa.Form2.ADOquery.ExecSQL;
           //Ingreso Asiento Borrador

          total:= unit6.debe - unit6.haber;
          lbl21.Caption:= (FormatFloat('0.00',total));
          numero:= numero+1;
          numero1:= numero1+1;

          edt7.Text:= inttostr(numero);
          edt9.Clear;
          edt10.Clear;
          edt11.Clear;
          cbb1.ItemIndex:= -1;
          edt13.Clear;
          edt14.Clear;
        end;
    end;


procedure TForm10.FormShow(Sender: TObject);

begin
numero:= 1;                  
numero1:= 0;
edt7.Text:= inttostr(numero);
Modificar_Cuenta1.Enabled:= false;
Modificar_Cuenta2.Enabled:= false;
debe:= 0;
haber:= 0;
edt7.Enabled:= false;
edt8.Enabled:= false;
edt8.Clear;
lbl18.Caption:= '-----';
lbl4.Caption:='----';
lbl7.Caption:='----';
lbl21.Caption:='----';


edt5.Text:= inttostr(Libreria_Validaciones.RandomNum);
asiento:= StrToInt(edt5.text);
edt5.Enabled:= false;
edt6.Text:= Datetostr(date);
edt6.Enabled:= false;
end;

procedure TForm10.btn7Click(Sender: TObject);
var
  num: Integer;
  concepto: string;
begin
 if Application.MessageBox('¿Seguro desea eliminar el movimiento seleccionado?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then                                         
      begin
        num:= (TStringGrid.Row);
        concepto:= TStringGrid.Cells[0,num];
        TStringGrid.Cells [0,num]:= '';
        TStringGrid.Cells [1,num]:= '';
        TStringGrid.Cells [2,num]:= '';
      end;

end;

procedure TForm10.btn8Click(Sender: TObject);
begin

//ACA HACER LA BUSQUEDA SI EL ASIENTO EXISTE
edt5.Enabled:= false;
end;

procedure TForm10.btn9Click(Sender: TObject);
begin
edt5.Enabled:= True;
end;


procedure TForm10.FormCreate(Sender: TObject);
begin
tipo:= false;
end;

procedure TForm10.edt13KeyPress(Sender: TObject; var Key: Char);
var pos: Cardinal;
begin
 with Sender as TEdit do
  begin
   pos := System.Pos('.', Text);
   if not LongBool(Pos) then Dec(Pos);
   ReadOnly := not (Key in ['0'..'9', '.', #8]) or
               (Pos <> $FFFFFFFF) and (Key = '.') or
               ((Key <> #8) and (Pos < (SelStart - 1)));

  end;
end;

procedure TForm10.edt2Exit(Sender: TObject);
var
  nom: string;
begin
if not (edt2.Text = '')
  then
    begin
      nom:= edt2.Text;
      Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta where codigo_Cuenta='+#39+nom+#39);
      Pantalla_programa.Form2.ADOQuery.Open;

      if Pantalla_programa.Form2.ADOQuery.FieldByName('Codigo_Cuenta').Value = nom
        then
          lbl18.Caption:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nombre_Cuenta').Value
         else
                    lbl18.Caption:= 'No existe ninguna cuenta con la numeracion ingresada';
    end;
end;


procedure TForm10.edt2Enter(Sender: TObject);
begin
lbl18.Caption:= '----';
end;

procedure TForm10.btn12Click(Sender: TObject);
var
  num,numero: Integer;
begin
  if unit6.tipo = True
    then
      begin
       if Application.MessageBox('Cancelara todos los pases y los borrara, ¿Esta seguro?','Atención',mb_OkCancel +
        mb_IconQuestion)= idOk
         then
          begin
                edt9.Clear;
                edt10.Clear;
                edt11.Clear;
                cbb1.ItemIndex:= -1;
                edt13.Clear;
                edt14.Clear;
                numero:= 1;
                Pantalla_programa.Form2.ADOquery.SQL.Clear;
                pantalla_Programa.Form2.ADOquery.SQL.Add('DELETE FROM borrador_Asientos Where AS_id_asiento='+inttostr(asiento));
                pantalla_Programa.Form2.ADOquery.Open;
                edt7.Text:= inttostr(numero);


                for numero:= 0 to 50 do
                begin
                  TStringGrid.Cells [0,numero]:= '';
                  TStringGrid.Cells [1,numero]:= '';
                  TStringGrid.Cells [2,numero]:= '';
                  TStringGrid.Cells [3,numero]:= '';
                  TStringGrid.Cells [4,numero]:= '';

                end;

                numero:= 1;
                numero1:= 0;
                edt7.Text:= inttostr(numero);
                Modificar_Cuenta1.Enabled:= false;
                Modificar_Cuenta2.Enabled:= false;
                debe:= 0;
                haber:= 0;
                edt7.Enabled:= false;
                edt8.Enabled:= false;
                edt8.Clear;

                edt5.Text:= inttostr(Libreria_Validaciones.RandomNum);
                asiento:= StrToInt(edt5.text);
                edt5.Enabled:= false;
                edt6.Text:= Datetostr(date);
                edt6.Enabled:= false;
                btn2.Enabled:= true;
                btn4.Enabled:= true;
                edt1.Clear;
                edt2.Clear;
                lbl18.Caption:= '-----';
                lbl4.Caption:='----';
                lbl7.Caption:='----';
                lbl21.Caption:='----';

                unit6.tipo:= false;

          end;
       end
      else
        ShowMessage('No hay pases para borrar');

end;

procedure TForm10.btn11Click(Sender: TObject);
var
  num,numero: Integer;
 begin
  if unit6.tipo = True
    then
      if unit6.debe = unit6.haber
        then
            begin
             if Application.MessageBox('Guardara los pases ingresados en un borrador.','Atención',mb_OkCancel +
              mb_IconQuestion)= idOk
               then
                begin
                      edt9.Clear;
                      edt10.Clear;
                      edt11.Clear;
                      cbb1.ItemIndex:= -1;
                      edt13.Clear;
                      edt14.Clear;
                      numero:= 1;
                      edt7.Text:= inttostr(numero);


                      for numero:= 0 to 50 do
                      begin
                        TStringGrid.Cells [0,numero]:= '';
                        TStringGrid.Cells [1,numero]:= '';
                        TStringGrid.Cells [2,numero]:= '';
                        TStringGrid.Cells [3,numero]:= '';
                        TStringGrid.Cells [4,numero]:= '';

                      end;

                      numero:= 1;
                      numero1:= 0;
                      edt7.Text:= inttostr(numero);
                      Modificar_Cuenta1.Enabled:= false;
                      Modificar_Cuenta2.Enabled:= false;
                      debe:= 0;
                      haber:= 0;
                      edt7.Enabled:= false;
                      edt8.Enabled:= false;
                      edt8.Clear;

                      edt5.Text:= inttostr(Libreria_Validaciones.RandomNum);
                      asiento:= StrToInt(edt5.text);
                      edt5.Enabled:= false;
                      edt6.Text:= Datetostr(date);
                      edt6.Enabled:= false;
                      btn2.Enabled:= true;
                      btn4.Enabled:= true;
                      edt1.Clear;
                      edt1.Enabled:= True;
                      edt2.Clear;
                      edt2.Enabled:= true;
                      lbl18.Caption:= '-----';
                      lbl4.Caption:='----';
                      lbl7.Caption:='----';
                      lbl21.Caption:='----';

                      unit6.tipo:= false;

                end

            else
              ShowMessage('No hay pases para guardar en el borrador');
        end
       else
        if (unit6.debe <> unit6.haber)
          then
          if Application.MessageBox('La diferencia de saldos es distinta, desea guardar el borrador de todos modos?','Atención',mb_OkCancel +
              mb_IconQuestion)= idOk
               then
                begin
                                        edt9.Clear;
                      edt10.Clear;
                      edt11.Clear;
                      cbb1.ItemIndex:= -1;
                      edt13.Clear;
                      edt14.Clear;
                      numero:= 1;
                      edt7.Text:= inttostr(numero);


                      for numero:= 0 to 50 do
                      begin
                        TStringGrid.Cells [0,numero]:= '';
                        TStringGrid.Cells [1,numero]:= '';
                        TStringGrid.Cells [2,numero]:= '';
                        TStringGrid.Cells [3,numero]:= '';
                        TStringGrid.Cells [4,numero]:= '';

                      end;

                      numero:= 1;
                      numero1:= 0;
                      edt7.Text:= inttostr(numero);
                      Modificar_Cuenta1.Enabled:= false;
                      Modificar_Cuenta2.Enabled:= false;
                      debe:= 0;
                      haber:= 0;
                      edt7.Enabled:= false;
                      edt8.Enabled:= false;
                      edt8.Clear;

                      edt5.Text:= inttostr(Libreria_Validaciones.RandomNum);
                      asiento:= StrToInt(edt5.text);
                      edt5.Enabled:= false;
                      edt6.Text:= Datetostr(date);
                      edt6.Enabled:= false;
                      btn2.Enabled:= true;
                      btn4.Enabled:= true;
                      edt1.Clear;
                      edt2.Clear;
                      lbl18.Caption:= '-----';              
                      lbl4.Caption:='----';
                      lbl7.Caption:='----';
                      lbl21.Caption:='----';

                      unit6.tipo:= false;
                end
             else
              begin
                edt9.Clear;
                edt10.Clear;
                edt11.Clear;
                cbb1.ItemIndex:= -1;
                edt13.Clear;
                edt14.Clear;
                numero:= 1;
                Pantalla_programa.Form2.ADOquery.SQL.Clear;
                pantalla_Programa.Form2.ADOquery.SQL.Add('DELETE FROM borrador_Asientos Where AS_id_asiento='+inttostr(asiento));
                pantalla_Programa.Form2.ADOquery.ExecSQL;
                edt7.Text:= inttostr(numero);


                for numero:= 0 to 50 do
                begin
                  TStringGrid.Cells [0,numero]:= '';
                  TStringGrid.Cells [1,numero]:= '';
                  TStringGrid.Cells [2,numero]:= '';
                  TStringGrid.Cells [3,numero]:= '';
                  TStringGrid.Cells [4,numero]:= '';

                end;

                numero:= 1;
                numero1:= 0;
                edt7.Text:= inttostr(numero);
                Modificar_Cuenta1.Enabled:= false;
                Modificar_Cuenta2.Enabled:= false;
                debe:= 0;
                haber:= 0;
                edt7.Enabled:= false;
                edt8.Enabled:= false;
                edt8.Clear;

                edt5.Text:= inttostr(Libreria_Validaciones.RandomNum);
                asiento:= StrToInt(edt5.text);
                edt5.Enabled:= false;
                edt6.Text:= Datetostr(date);
                edt6.Enabled:= false;
                btn2.Enabled:= true;
                btn4.Enabled:= true;
                edt1.Clear;
                edt2.Clear;
                lbl18.Caption:= '-----';
                lbl4.Caption:='----';
                lbl7.Caption:='----';
                lbl21.Caption:='----';

                unit6.tipo:= false;

              end;

   end;

procedure TForm10.btn10Click(Sender: TObject);
var
  id,num: integer;
  cuenta,concepto: string;
  importe: Real;
  tipo,leyenda: string;
  fecha_op, fecha_vto: string;

begin
 if Application.MessageBox('Esta por ingresar el asiento en limpio,¿Desea continuar?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
    begin
      if (unit6.debe <> unit6.haber)
        then
          ShowMessage('Existe diferencia en el saldo, no se ingresara en limpio.')
        else
          if (unit6.debe = unit6.haber)
            then                                                                          
                begin
                  DecimalSeparator:='.';
                      Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from borrador_Asientos where AS_id_asiento='+inttostr(asiento));
                      Pantalla_programa.Form2.ADOQuery.Open;
                      While not (Pantalla_programa.Form2.ADOQuery.Eof) do
                        begin                                                                 
                          id:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_id_asiento').Value;
                          num:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_num_pase').Value;
                          cuenta:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_id_cuenta').Value;
                          concepto:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_concepto_asiento').Value;
                          importe:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_importe_as').Value;
                          tipo:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_tipo_saldo').Value;
                          leyenda:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_leyenda_pase').Value;
                          fecha_op:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_fecha_operacion').Value;
                          fecha_vto:= Pantalla_programa.Form2.ADOQuery.FieldByName('AS_fecha_vto').Value ;

          Pantalla_Programa.Form2.ADOquery1.SQL.Clear;
          Pantalla_Programa.Form2.ADOquery1.SQL.Add('Insert into Asientos Values ('+inttostr(id)+','+inttostr(num)+','+#39+cuenta+#39','+#39+concepto+#39+','+floattostr(importe)+','+#39+tipo+#39+','+#39+leyenda+#39+','+#39+Fecha_op+#39+','+#39+fecha_vto+#39+','+#39+'L'+#39+')');
          Pantalla_Programa.Form2.ADOquery1.ExecSQL;

                          Pantalla_Programa.Form2.ADOquery.Next;

                          //SE PASA EN LIMPIO TODO EL ASIENTO


                        end;

                      //SE TERMINA DEPASAR EN LIMPIO, MODIFICAMOS EL BORRADOR
                      Pantalla_Programa.Form2.ADOquery.SQL.Clear;
                      Pantalla_Programa.Form2.ADOquery.SQL.Add('Update Borrador_Asientos set AS_Borrador='+#39+'L'+#39);
                      Pantalla_Programa.Form2.ADOquery.SQL.Add('Where AS_Id_asiento='+inttostr(id)); {Modificar la clave seleccionada}
                      Pantalla_Programa.Form2.ADOQuery.ExecSQL;


                      //LIMPIEZA DE TODO   //LIMPIEZA DE TODO    //LIMPIEZA DE TODO
                      edt9.Clear;
                      edt10.Clear;
                      edt11.Clear;
                      cbb1.ItemIndex:= -1;
                      edt13.Clear;
                      edt14.Clear;
                      numero:= 1;
                      edt7.Text:= inttostr(numero);


                      for numero:= 0 to 50 do
                      begin
                        TStringGrid.Cells [0,numero]:= '';
                        TStringGrid.Cells [1,numero]:= '';
                        TStringGrid.Cells [2,numero]:= '';
                        TStringGrid.Cells [3,numero]:= '';
                        TStringGrid.Cells [4,numero]:= '';

                      end;

                      numero:= 1;
                      numero1:= 0;
                      edt7.Text:= inttostr(numero);
                      Modificar_Cuenta1.Enabled:= false;
                      Modificar_Cuenta2.Enabled:= false;
                      debe:= 0;
                      haber:= 0;
                      edt7.Enabled:= false;
                      edt8.Enabled:= false;
                      edt8.Clear;

                      edt5.Text:= inttostr(Libreria_Validaciones.RandomNum);
                      asiento:= StrToInt(edt5.text);
                      edt5.Enabled:= false;
                      edt6.Text:= Datetostr(date);
                      edt6.Enabled:= false;
                      btn2.Enabled:= true;
                      btn4.Enabled:= true;
                      edt1.Clear;
                      edt1.Enabled:= True;
                      edt2.Clear;
                      edt2.Enabled:= true;
                      lbl18.Caption:= '-----';
                      lbl4.Caption:='----';
                      lbl7.Caption:='----';
                      lbl21.Caption:='----';

                      unit6.tipo:= false;
                      //LIMPIEZA DE TODO   //LIMPIEZA DE TODO    //LIMPIEZA DE TODO
                end;
    end;
end;



end.
