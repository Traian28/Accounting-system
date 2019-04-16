unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,libreria_validaciones;

type
  TForm12 = class(TForm)
    Crear_Cuenta: TGroupBox;
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt2: TEdit;
    lbl4: TLabel;
    cbb2: TComboBox;
    lbl5: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    Modificar_Cuenta: TGroupBox;
    impresora1: TGroupBox;
    lbl6: TLabel;
    edt3: TEdit;
    btn4: TBitBtn;
    impresora2: TGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    btn5: TBitBtn;
    btn6: TBitBtn;
    btn7: TBitBtn;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl11: TLabel;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure cbb1Exit(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure edt1Exit(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure edt2Exit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt10KeyPress(Sender: TObject; var Key: Char);
    procedure edt10Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  nivel: integer;

implementation

uses Unit9, Pantalla_programa;

{$R *.dfm}

procedure TForm12.FormShow(Sender: TObject);
begin
 edt2.Enabled:= false;
cbb1.Clear;
edt1.Clear;
edt2.Clear;
cbb2.ItemIndex:= -1;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
lbl13.Caption:= '--------';

Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta ORDER BY Codigo_Cuenta');
Pantalla_programa.Form2.ADOQuery.Open;

      While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
        cbb1.AddItem(Pantalla_programa.Form2.ADOQuery.FieldByName('Codigo_Cuenta').Value,cbb1);
        Pantalla_programa.Form2.ADOQuery.Next;
      end;

end;

procedure TForm12.btn3Click(Sender: TObject);
begin
Form12.Hide;
form11.show;
end;                                   
                
procedure TForm12.btn7Click(Sender: TObject);
begin
Form12.Hide;
form11.show;
end;

procedure TForm12.cbb1Exit(Sender: TObject);
var
  nom: string;
begin

if not (cbb1.Text = '')
  then
    begin
      nom:= cbb1.Text;
      Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta where codigo_Cuenta='+#39+nom+#39);
      Pantalla_programa.Form2.ADOQuery.Open;

      lbl13.Caption:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nombre_Cuenta').Value;
      nivel:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nivel_Cuenta').Value;
      edt2.Text:=(Pantalla_programa.Form2.ADOQuery.FieldByName('Codigo_Cuenta').Value + '.');
    end;  
end;

procedure TForm12.edt1KeyPress(Sender: TObject; var Key: Char);
begin
key := UpCase(key);
  if not (key = #8) and not(key = #32)
    then
      begin
        if not (libreria_validaciones.Esletra(key))
          then
            begin
            key:= #0;
            beep;
          end;
      end;
end;

procedure TForm12.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key = #8) and not(key = #32) and not (Key = #46) 
    then
      begin
       if not (Libreria_Validaciones.EsNumero(key))
        then
          begin
            key:= #0;
            beep;
          end;
      end;
end;

procedure TForm12.edt1Exit(Sender: TObject);
begin
Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta');
Pantalla_programa.Form2.ADOQuery.Open;

While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
        if Pantalla_programa.Form2.ADOQuery.FieldByName('Nombre_Cuenta').Value = edt1.Text
          then
            begin
              ShowMessage('ERROR. Ya existe el nombre de la cuenta');
              edt1.Clear;
            end
          else
             Pantalla_programa.Form2.ADOQuery.Next;
      end;


end;

procedure TForm12.btn2Click(Sender: TObject);
begin
cbb1.Clear;
edt1.Clear;
edt2.Clear;
cbb2.ItemIndex:= -1;
lbl13.Caption:= '--------';
end;

procedure TForm12.btn6Click(Sender: TObject);
begin
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
end;

procedure TForm12.edt2Exit(Sender: TObject);
begin                          
Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta');
Pantalla_programa.Form2.ADOQuery.Open;

While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
        if Pantalla_programa.Form2.ADOQuery.FieldByName('Codigo_Cuenta').Value = edt2.Text
          then
            begin                                                  
              ShowMessage('ERROR. Ya existe el codigo de cuenta');
              edt2.Clear;
            end
          else
             Pantalla_programa.Form2.ADOQuery.Next;
      end;
end;                                                                                                      

procedure TForm12.btn1Click(Sender: TObject);
var
nivel1: integer;
cuenta: string;
begin
   if Application.MessageBox('Esta por crear una nueva cuenta, ¿desea continuar?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
      begin
       nivel1:= nivel+1;
       cuenta:= edt2.Text + edt10.Text;
       Pantalla_Programa.Form2.ADOquery.SQL.Clear;
       Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Plan_Cuenta Values ('+#39+cuenta+#39+','+#39+edt1.Text+#39+','+cbb2.Text+','+inttostr(nivel1)+','+#39+cbb1.Text+#39+')');
       Pantalla_Programa.Form2.ADOquery.ExecSQL;
      end
   else
    begin
      cbb1.Clear;
      edt1.Clear;
      edt2.Clear;
      cbb2.ItemIndex:= -1;
      lbl13.Caption:= '--------';
    end;   
end;

procedure TForm12.btn4Click(Sender: TObject);
begin
      Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta where codigo_Cuenta='+#39+edt3.Text+#39);
      Pantalla_programa.Form2.ADOQuery.Open;

      if not (Pantalla_programa.Form2.ADOquery.Eof)
        then
          begin
            edt4.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nombre_Cuenta').Value;
            edt5.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('Codigo_Cuenta').Value;
            edt9.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('tipo_Cuenta').Value;
              if (Pantalla_programa.Form2.ADOQuery.FieldByName('tipo_Cuenta').Value = 0)
               then
                edt6.Text:='NO IMPUTABLE'
               else
                if (Pantalla_programa.Form2.ADOQuery.FieldByName('tipo_Cuenta').Value = 1)
                  then
                    edt6.Text:='IMPUTABLE';
            edt7.Text:= inttostr(Pantalla_programa.Form2.ADOQuery.FieldByName('Nivel_Cuenta').Value);
            if not(Pantalla_programa.Form2.ADOQuery.FieldByName('padre_Cuenta').IsNull)
              then
                edt8.Text:= Pantalla_programa.Form2.ADOQuery.FieldByName('padre_Cuenta').Value
              else
                edt8.Text:= '-';  
          end
        else
          showmessage('no existe ninguna cuenta');
end;

procedure TForm12.edt10KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key = #8) and not(key = #32)
    then
      begin
       if not (Libreria_Validaciones.EsNumero(key))
        then
          begin
            key:= #0;
            beep;
          end;
      end;
end;

procedure TForm12.edt10Exit(Sender: TObject);
var
  cuenta: string;
begin                         
  cuenta:= edt2.Text + edt10.Text;

    Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta where codigo_Cuenta='+#39+cuenta+#39);
    Pantalla_programa.Form2.ADOQuery.Open;
      if (Pantalla_programa.Form2.ADOQuery.Eof = False)
        then
          begin
            ShowMessage('Ya existe una cuenta con la numeracion que desea ingresar.');
            edt10.Clear;
            edt10.SetFocus;

          end;
end;

end.
