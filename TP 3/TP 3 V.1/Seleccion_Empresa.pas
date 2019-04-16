unit Seleccion_Empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    impresora1: TGroupBox;
    btn1: TBitBtn;
    btn2: TBitBtn;
    edt1: TEdit;
    lbl2: TLabel;
    con1: TADOConnection;
    qry1: TADOQuery;
    tmr1: TTimer;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);                      
    procedure FormShow(Sender: TObject);
    procedure edt1Enter(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  empresa,enlace: String;
  tipoempresa: string;

implementation

uses Pantalla_programa, Pantalla_inicio;

{$R *.dfm}

procedure TForm5.btn2Click(Sender: TObject);
begin
 if Application.MessageBox('¿Seguro que cerrar la aplicacion?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
  application.Terminate;
end;

procedure TForm5.btn1Click(Sender: TObject);
var
  cadena,conex: string;
  nombre: string;
  valor: boolean;
begin
  cadena:= edt1.Text;
valor:= false;
if (edt1.text = '')
  then
    begin
     lbl2.Caption:= 'Ingreso un acceso de red Incorrecto';
     lbl2.Color:= clred;
    end
  else
    begin
      qry1.SQL.Text:= ('Select * from Acceso_Empresa');
      qry1.Open;
      qry1.First;
      While not (qry1.Eof) do
          begin
           conex:= qry1.fieldbyname('Acceso_id').Value;
            if conex = cadena
              then
                begin
                  valor:= true;
                  empresa:= qry1.fieldbyname('Acceso_Nombre').Value;
                  enlace:= qry1.fieldbyname('Acceso_Conexion').Value;
                  Pantalla_Programa.Form2.ADOConnection1.Close;
                  Pantalla_Programa.Form2.ADOConnection2.Close;
                  Pantalla_programa.Form2.ADOConnection1.ConnectionString:= enlace;
                  Pantalla_programa.Form2.ADOConnection2.ConnectionString:= enlace;
                    if empresa = 'Empresa 1'
                      then
                        tipoempresa:='Gestion_Documentos'
                      else
                        if empresa = 'Empresa 2'
                          then
                            tipoempresa:='Gestion_Documentos2';

                  form1.show;
                  form5.Hide;
                end;

           qry1.Next;
          end;
        if valor = False
          then
           begin
              lbl2.Caption:= 'Conexion Inexistente';
              lbl2.Color:= clRed;
           end;
    end;

end;

procedure TForm5.FormShow(Sender: TObject);
begin
edt1.Clear;
lbl2.Caption:= '-----------';          
lbl2.Color:= clSilver;
if not FileExists('C:\Users\GoodLuck\Desktop\TP 3\databe\Accesos.bak')
  then
    begin
      lbl2.Caption:= 'Se esta regenerando la base de acceso, por favor, Espere.';
      lbl2.Color:= clGreen;
      btn1.Enabled:= false;
      tmr1.Enabled:= true;
      DeleteFile('C:\Users\GoodLuck\Desktop\TP 3\databe\Accesos.bak');
      Pantalla_programa.Form2.ADOQuery1.SQL.Text:='backup database Gestion_Acceso to disk ='+#39+'C:\Users\GoodLuck\Desktop\TP 3\databe\Accesos.bak'+#39;
      Pantalla_programa.Form2.ADOQuery1.ExecSQL;
    end;

end;




procedure TForm5.edt1Enter(Sender: TObject);
begin
lbl2.Caption:= '-----------';
lbl2.Color:= clSilver;
end;

procedure TForm5.tmr1Timer(Sender: TObject);
begin
      lbl2.Caption:= 'Base generada. Gracias por aguardar.';
      lbl2.Color:= clGreen;
      btn1.Enabled:= True;       
      tmr1.Enabled:= false;
end;


end.
