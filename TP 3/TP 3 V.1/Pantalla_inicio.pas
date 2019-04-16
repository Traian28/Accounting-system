unit Pantalla_inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Pantalla_programa, Libreria_programa;
                                                                     
type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    edit_usuario: TEdit;
    edit_pw: TEdit;
    Label5: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edit_pwClick(Sender: TObject);
    procedure edit_usuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  permiso: integer;
  nombre: string;
  tipo: string;

implementation

uses Seleccion_Empresa;

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
form5.show;
Form1.Hide;
 {if Application.MessageBox('¿Seguro que cerrar la aplicacion?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
  application.Terminate; }
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
begin
pantalla_programa.Form2.ADOQuery.SQL.Text:= ('Select * from Usuarios Where Usuario_ID='+#39+edit_usuario.Text+#39);
pantalla_programa.Form2.ADOQuery.Open;
pantalla_programa.Form2.ADOQuery.First;

if (edit_usuario.text = '')
  then
    begin
     label5.Caption:= 'Ingrese Usuario y Contraseña';
     label5.Color:= clred;
    end
  else              
    if not (Pantalla_programa.Form2.ADOquery.Eof)
      then
        if (edit_pw.Text = Pantalla_Programa.Form2.ADOquery.FieldByName('Usuario_pass').Value)
          then
            begin
              permiso:= Pantalla_Programa.Form2.ADOquery.FieldByName('Usuario_Perfil').Value;
              nombre:= Pantalla_Programa.Form2.ADOquery.FieldByName('Usuario_nombre').Value;

              Pantalla_programa.Form2.ADOQuery1.SQL.Text:= ('Select * from Perfiles where P_Clave='+inttostr(permiso));
              Pantalla_programa.Form2.ADOQuery1.Open;
              Pantalla_programa.Form2.ADOQuery1.first;
              tipo:= Pantalla_programa.Form2.ADOQuery1.FieldByName('P_Descripcion').Value;

              Pantalla_programa.Form2.Show;
              Pantalla_inicio.Form1.Hide;
            end
          else
            begin
              label5.Caption:= 'contraseña incorrecta';
              label5.Color:= clred;
            end
      else
        begin
          label5.Caption:= 'Usuario Inexistente';
          label5.Color:= clred;
          edit_usuario.Clear;     
          edit_pw.Clear;
        end;        
end;

procedure TForm1.edit_pwClick(Sender: TObject);
begin
label5.Caption:= '-';
label5.Color:= clsilver;
end;

procedure TForm1.edit_usuarioClick(Sender: TObject);
begin
label5.Caption:= '-';
label5.Color:= clsilver;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Form1.Caption:= Seleccion_Empresa.empresa+' - Conectando'; 
edit_usuario.Clear;
edit_pw.Clear;  
end;


end.
