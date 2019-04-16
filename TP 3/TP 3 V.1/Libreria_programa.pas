unit Libreria_programa;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

//______________ ABM - Persona _______________
function ValidarPersona(dni: integer): boolean;
function ValidarZona(clav: integer): boolean;
Procedure AltaPersona(Nombre: String; Apellido: String; Edad: String; dni: integer; Tipodoc: integer; sexo: String; Loc: String; zona: integer);
Procedure BajaPersona(dni: integer);
Procedure ModificarPersona(Nombre: String; Apellido: String; Edad: String; dni: integer; Tipodoc: integer; sexo: String; Loc: String; DniNuevo: Integer; zona: integer);


//______________ ABM - Documentos ______________
function ValidarDocumento(tipo: integer): boolean;
Procedure AltaDocumento(id_doc: integer; DescDoc: String; SiglaDoc: string);
Procedure BajaDocumento(id_doc: integer);
Procedure ModificarDocumento(id_doc: integer; DescDoc: String; SiglaDoc: integer; Sigla_docnuevo: String);

//______________ ABM - Administradores ______________
function ValidarAdministrador(tipo: string): boolean;
Procedure AltaAdministrador(id: string; nom: String; pas: string; email: string; perfil: integer);
Procedure BajaAdministrador(tipo: string);
Procedure ModificarAdministrador(idbuscado: string; idnuevo: string; nom: String; pas: string; email: string; perfil: integer);
//
function GetPCName: string;

//__________________ AUDITORIA ___________________
function ValidarAuditoria(dni: integer): boolean;
Procedure CargarAuditoria(doc: Integer; tpdoc: integer; nom: string; Ape: string; ed: string; Sexo:string; Prov: Integer; Usuario: string; Ter: String; Acc: string);

Procedure CargarAuditoriaDoc(doc: Integer; desc: string; Sigla: string; Usu: string; Terminal: string; Accion: string);

Procedure CargarAuditoriaUsuario(id: string; nom: string; Pass: string; Mail: string; Perfil: Integer; Usu: string; Terminal: string; Accion: string);

Procedure CargarAuditoriaDatos(Usu: string; Terminal: string; Accion: string);

implementation

uses Pantalla_programa;

//--------------VALIDAR SI EXISTE Persona------------
function ValidarPersona(dni: integer): boolean;
var
Documento: string;
begin
  documento:= inttostr(dni);
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Personas where P_Nrodoc='+(documento));
  Pantalla_programa.Form2.ADOquery.Open;   // Validacion si existe un usuario con ese documento
  Pantalla_Programa.Form2.ADOquery.First;
    If (dni = Pantalla_Programa.Form2.ADOquery.FieldByName('P_Nrodoc').Value)
      then
        ValidarPersona:= true
      else
        ValidarPersona:= false;
end;

function ValidarZona(clav: integer): boolean;
var
clave: string;
begin
  clave:= inttostr(clav);
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Zonas_Ventas where ZC_Clave='+(clave));
  Pantalla_programa.Form2.ADOquery.Open;   // Validacion si existe un usuario con ese documento
  Pantalla_Programa.Form2.ADOquery.First;
    If (clav = Pantalla_Programa.Form2.ADOquery.FieldByName('ZC_Clave').Value)
      then
        ValidarZona:= true
      else
        ValidarZona:= false;
end;
//------------ALTA DE PERSONA-----------------
Procedure AltaPersona(Nombre: String; Apellido: String; Edad: String; dni: integer; Tipodoc: integer; sexo: String; Loc: String; zona: integer);
begin
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Personas where P_Nrodoc='+inttostr(dni));
  Pantalla_programa.Form2.ADOquery.Open;   // Validacion si existe un usuario con ese documento
  Pantalla_Programa.Form2.ADOquery.First;
    If (dni = Pantalla_Programa.Form2.ADOquery.FieldByName('P_Nrodoc').Value)
      then
        showmessage('El usuario ya existe, no puede cargarlo')
      else
        begin    //Insertar registros en personas
          Pantalla_Programa.Form2.ADOquery.SQL.Clear;
          Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Personas Values ('+inttostr(dni)+','+inttostr(Tipodoc)+','+#39+nombre+#39+','+#39+Apellido+#39+','+#39+Edad+#39+','+#39+sexo+#39+','+#39+Loc+#39+','+inttostr(zona)+')');
          Pantalla_Programa.Form2.ADOquery.ExecSQL;
          Showmessage('A ingresado una persona exitosamente');
        end;
end;
//------------BAJA DE PERSONA-----------------
Procedure BajaPersona(dni: integer);
begin
  if (ValidarPersona(dni) = true)
      then
          begin
              if Application.MessageBox('¿Seguro desea eliminar el usuario?','Atención',mb_OkCancel +
                         mb_IconQuestion)= idOk
                    then
                      begin    //Eliminacion del registro encontrado en la base personas
                        pantalla_Programa.Form2.ADOquery.SQL.Add('DELETE FROM Personas');
                        pantalla_Programa.Form2.ADOquery.SQL.Add('Where P_NroDoc='+inttostr(dni));
                        pantalla_Programa.Form2.ADOquery.Open;
                        showmessage('Se borro el usuario exitosamente.');
                      end;
          end
      else                                      
        ShowMessage('No puede eliminar ningun registro, ya que no existe el dni');
end;
//------------MODIFICACION PERSONA-----------------
Procedure ModificarPersona(Nombre: String; Apellido: String; Edad: String; dni: integer; Tipodoc: integer; sexo: String; Loc: String; DniNuevo: Integer; zona: integer);
begin
  if (ValidarPersona(dni) = true)
    then                                                                                                                                                                                                                                                      
      begin     
        Pantalla_Programa.Form2.ADOquery.SQL.Clear;        //Modificacion del registro persona .-
        Pantalla_Programa.Form2.ADOquery.SQL.Add('Update Personas set P_Nrodoc='+inttostr(DniNuevo)+',P_Tipodoc='+inttostr(Tipodoc)+',P_Nombre='+#39+Nombre+#39+',P_Apellido='+#39+Apellido+#39+',P_Edad='+#39+edad+#39+',P_Sexo='+#39+sexo+#39+',P_Localidad='+#39+Loc+#39+',cod_zona='+inttostr(zona));
        Pantalla_Programa.Form2.ADOquery.SQL.Add('Where P_Nrodoc='+Inttostr(dni));
        Pantalla_Programa.Form2.ADOquery.ExecSQL;
        Showmessage('Persona modificada exitosamente');
      end
    else
      Showmessage('No puede modificar el registro, no existe');
end;
//_________________________________________________________________
//_________________________________________________________________
//_________________________________________________________________
//_________________________________________________________________

//--------------VALIDAR SI EXISTE Documento------------
function ValidarDocumento(tipo: integer): boolean;
begin
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from TipoDocumento where TP_Clave='+inttostr(tipo));
  Pantalla_programa.Form2.ADOquery.Open;   //
    If (tipo = Pantalla_Programa.Form2.ADOquery.FieldByName('TP_Clave').Value)
      then
        ValidarDocumento:= true
      else
        ValidarDocumento:= false;
end;
//--------------ALTA DOCUMENTO------------
Procedure AltaDocumento(id_doc: integer; DescDoc: String; SiglaDoc: string);
begin
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from TipoDocumento where TP_Sigla='+#39+SiglaDoc+#39);
  Pantalla_programa.Form2.ADOquery.Open;   //
  Pantalla_Programa.Form2.ADOquery.First;
    If (SiglaDoc = Pantalla_Programa.Form2.ADOquery.FieldByName('TP_Sigla').Value)
      then
        showmessage('El tipo de documento que quiere ingresar ya existe')
      else
        begin
          Pantalla_Programa.Form2.ADOquery.SQL.Clear;
          Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into TipoDocumento Values ('+inttostr(id_doc)+','+#39+DescDoc+#39+','+#39+Sigladoc+#39+')');
          Pantalla_Programa.Form2.ADOquery.ExecSQL;
          Showmessage('Ingreso un nuevo tipo de documento exitosamente');
        end;
end;
//--------------BAJA DOCUMENTO------------
Procedure BajaDocumento(id_doc: integer);
begin
  if (ValidarDocumento(id_doc) = true)
      then
          begin
              if Application.MessageBox('¿Seguro desea eliminar el tipo de documento?','Atención',mb_OkCancel +
                         mb_IconQuestion)= idOk
                    then
                      begin
                        pantalla_Programa.Form2.ADOquery.SQL.Add('DELETE FROM TipoDocumento');
                        pantalla_Programa.Form2.ADOquery.SQL.Add('Where TP_Clave='+inttostr(id_doc));
                        pantalla_Programa.Form2.ADOquery.Open;
                        Showmessage('Usted elimino un documento correctamente');
                      end;                              
          end       
      else
        ShowMessage('No puede eliminar ningun registro, ya que no existe el tipo de documento');
end;
//--------------MODIFICAR DOCUMENTO------------
Procedure ModificarDocumento(id_doc: integer; DescDoc: String; SiglaDoc: integer; Sigla_docnuevo: String);
Begin
  if (ValidarDocumento(SiglaDoc) = true)
    then
      begin
        Pantalla_Programa.Form2.ADOquery.SQL.Clear;
        Pantalla_Programa.Form2.ADOquery.SQL.Add('Update TipoDocumento set TP_Clave='+inttostr(id_doc)+',TP_Descripcion='+#39+DescDoc+#39+',TP_Sigla='+#39+Sigla_docnuevo+#39);
        Pantalla_Programa.Form2.ADOquery.SQL.Add('Where TP_Clave='+inttostr(SiglaDoc)); {Modificar la clave seleccionada}
        Pantalla_Programa.Form2.ADOquery.ExecSQL;
        showmessage('Tipo de documento modificado exitosamente');
      end
    else
      Showmessage('No puede modificar el registro, no existe');
end;

//_________________________________________________________________
//_________________________________________________________________
//_________________________________________________________________
//_________________________________________________________________


//_______________Validar si existe administrador______________________

function ValidarAdministrador(tipo: string): boolean;
begin
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Usuarios where Usuario_ID='+#39+tipo+#39);
  Pantalla_programa.Form2.ADOquery.Open;   //
    If (tipo = Pantalla_Programa.Form2.ADOquery.FieldByName('Usuario_ID').Value)
      then
        ValidarAdministrador:= true
      else
        ValidarAdministrador:= false;
end;
//--------------ALTA Administrador------------
Procedure AltaAdministrador(id: string; nom: String; pas: string; email: string; perfil: integer);
begin
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Usuarios where Usuario_ID='+#39+id+#39);
  Pantalla_programa.Form2.ADOquery.Open;   //
  Pantalla_Programa.Form2.ADOquery.First;
    If (id = Pantalla_Programa.Form2.ADOquery.FieldByName('Usuario_ID').Value)
      then
        showmessage('El ombren de usuario que quiere ingresar ya existe')
      else
        begin
          Pantalla_Programa.Form2.ADOquery.SQL.Clear;
          Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Usuarios Values ('+#39+id+#39+','+#39+nom+#39+','+#39+pas+#39+','+#39+email+#39+','+inttostr(perfil)+')');
          Pantalla_Programa.Form2.ADOquery.ExecSQL;
          Showmessage('Ingreso un nuevo Usuario');
        end;

end;
//--------------BAJA ADMINISTRADOR------------
Procedure BajaAdministrador(tipo: string);
begin
  if (ValidarAdministrador(tipo) = true)
      then
          begin
              if Application.MessageBox('¿Seguro desea eliminar el usuario?','Atención',mb_OkCancel +
                         mb_IconQuestion)= idOk
                    then
                      begin
                        pantalla_Programa.Form2.ADOquery.SQL.Add('DELETE FROM Usuarios Where Usuario_ID='+#39+tipo+#39);
                        //pantalla_Programa.Form2.ADOquery.SQL.Add('Where Usuario_ID='+#39+tipo+#39);
                        pantalla_Programa.Form2.ADOquery.Open;
                        Showmessage('Usted elimino un usuario');
                      end;
          end       
      else
        ShowMessage('No puede eliminar ningun usuario, ya que no existe en la base de datos.');
end;
//--------------Modificar ADministrador------------
Procedure ModificarAdministrador(idbuscado: string; idnuevo: string; nom: String; pas: string; email: string; perfil: integer);
Begin
  if (ValidarAdministrador(idbuscado) = true)
    then
      begin
        Pantalla_Programa.Form2.ADOquery.SQL.Clear;
        Pantalla_Programa.Form2.ADOquery.SQL.Add('Update Usuarios set Usuario_ID='+#39+idnuevo+#39+',Usuario_Nombre='+#39+nom+#39+',Usuario_pass='+#39+pas+#39+',Usuario_Email='+#39+email+#39+',Usuario_Perfil='+inttostr(perfil));
        Pantalla_Programa.Form2.ADOquery.SQL.Add('Where Usuario_ID='+#39+idbuscado+#39);
        Pantalla_Programa.Form2.ADOquery.ExecSQL;
        showmessage('Usuario modificado exitosamente');
      end
    else
      Showmessage('No puede modificar el registro, no existe');
end;


//--------------------------------------------------
function GetPCName: string;
var
  Buffer: array[0..MAX_COMPUTERNAME_LENGTH] of Char;
  Size: Cardinal;
begin
  FillChar(Buffer,Sizeof(Buffer),0);
  Size:= Sizeof(Buffer);
  if GetComputerName(Buffer,Size) then
    Result:= String(PChar(@Buffer))
  else
    Result:= '';
end;
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

//---------AUDITORIA---------------
function ValidarAuditoria(dni: integer): boolean;
begin
  Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Auditoria where nro_Doc='+inttostr(dni));
  Pantalla_programa.Form2.ADOquery.Open;   //
    If (dni = Pantalla_Programa.Form2.ADOquery.FieldByName('nro_doc').Value)
      then
        ValidarAuditoria:= true
      else
        ValidarAuditoria:= false;
end;


Procedure CargarAuditoria(doc: Integer; tpdoc: integer; nom: string; Ape: string; ed: string; Sexo:string; Prov: Integer; Usuario: string; Ter: String; Acc: string);
begin
if ValidarAuditoria(doc)
  then
    showmessage('Aca hay que pisar el registro')
  else
    begin
    Pantalla_Programa.Form2.ADOquery.SQL.Clear;
    Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Auditoria Values ('+inttostr(doc)+','+inttostr(tpdoc)+','+#39+nom+#39+','+#39+Ape+#39+','+#39+ed+#39+','+#39+Sexo+#39+','+inttostr(Prov)+','+#39+Usuario+#39+','+'GETDATE()'+','+#39+ter+#39+','+#39+Acc+#39+')');
    Pantalla_Programa.Form2.ADOquery.ExecSQL;
    end;  

end;

Procedure CargarAuditoriaDoc(doc: Integer; desc: string; Sigla: string; Usu: string; Terminal: string; Accion: string);
begin
  Pantalla_programa.Form2.ADOquery.SQL.Clear;
  Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Auditoria_Doc Values ('+Inttostr(doc)+','+#39+desc+#39+','+#39+Sigla+#39+','+#39+Usu+#39+','+'GETDATE()'+','+#39+Terminal+#39+','+#39+Accion+#39+')');
  Pantalla_programa.Form2.ADOquery.ExecSQL;
end;

Procedure CargarAuditoriaUsuario(id: string; nom: string; Pass: string; Mail: string; Perfil: Integer; Usu: string; Terminal: string; Accion: string);
begin
  Pantalla_programa.Form2.ADOquery.SQL.Clear;
  Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Auditoria_Usuario Values ('+#39+id+#39+','+#39+nom+#39+','+#39+pass+#39+','+#39+mail+#39+','+inttostr(Perfil)+','+#39+usu+#39+','+'GETDATE()'+','+#39+terminal+#39+','+#39+accion+#39+')');
  Pantalla_programa.Form2.ADOquery.ExecSQL;
end;

Procedure CargarAuditoriaDatos(Usu: string; Terminal: string; Accion: string);
begin
 Pantalla_programa.Form2.ADOquery.SQL.Clear;
 Pantalla_Programa.Form2.ADOquery.SQL.Add('Insert into Auditoria_Datos Values ('+#39+Usu+#39+','+'GETDATE()'+','+#39+Terminal+#39+','+#39+Accion+#39+')');
 Pantalla_programa.Form2.ADOquery.ExecSQL;
end;


end.
