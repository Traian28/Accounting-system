unit Pantalla_programa;
            
interface
                                          
uses                        
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, DB, ADODB, Libreria_programa,
  Grids, Libreria_Validaciones, ExtCtrls, Hoja_Calculo, 
  RpCon, RpConDS, RpDefine, RpRave, RpRender, RpRenderPDF, RpBase, RpSystem,
  RpRenderText, RPDevice, RpRenderCanvas, RpRenderPreview, RpRenderPrinter,Seleccion_Empresa,
  Unit6;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    SALIR2: TMenuItem;
    Label27: TLabel;
    ADOConnection1: TADOConnection;
    ADOquery: TADOQuery;
    ADOQuery1: TADOQuery;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label20: TLabel;
    Label30: TLabel;
    Label25: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label31: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    TabSheet4: TTabSheet;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    BitBtn7: TBitBtn;
    Edit21: TEdit;
    GroupBox4: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    ComboBox1: TComboBox;
    BitBtn11: TBitBtn;
    Button2: TButton;
    ComboBox2: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    TabSheet1: TTabSheet;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button3: TButton;
    Label18: TLabel;
    Edit7: TEdit;
    BitBtn5: TBitBtn;
    Label19: TLabel;
    Label24: TLabel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Label17: TLabel;
    Edit6: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn16: TBitBtn;
    CerrarSesion1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label43: TLabel;
    Timer1: TTimer;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvProject2: TRvProject;
    RvDataSetConnection2: TRvDataSetConnection;
    QueryPersona: TADOQuery;
    TabSheet2: TTabSheet;
    Label44: TLabel;
    StringGrid2: TStringGrid;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    RvSystem1: TRvSystem;
    RvRenderPDF2: TRvRenderPDF;
    RvRenderText2: TRvRenderText;
    btn4: TBitBtn;
    btn5: TBitBtn;
    lbl1: TLabel;
    btn6: TBitBtn;
    lbl2: TLabel;
    btn7: TBitBtn;
    btn8: TBitBtn;
    qryQueryAuditoria: TADOQuery;
    qryQueryAudDoc: TADOQuery;
    qryQueryAudUsu: TADOQuery;
    RvProject4: TRvProject;
    RvDataSetConnection4: TRvDataSetConnection;
    RvProject5: TRvProject;
    RvDataSetConnection5: TRvDataSetConnection;
    RvProject6: TRvProject;
    RvDataSetConnection6: TRvDataSetConnection;
    btn9: TBitBtn;
    btn3: TBitBtn;
    RenderPreview1: TRvRenderPreview;
    ts1: TTabSheet;
    lbl3: TLabel;
    impresora: TGroupBox;
    cbb2: TComboBox;
    lbl4: TLabel;
    btn12: TBitBtn;
    lbl5: TLabel;
    chk1: TCheckBox;
    lbl6: TLabel;
    lbl7: TLabel;
    ts2: TTabSheet;
    lbl8: TLabel;
    impresora1: TGroupBox;
    btn1: TBitBtn;
    btn10: TBitBtn;
    con1: TADOConnection;
    qry1: TADOQuery;
    dlgOpen1: TOpenDialog;
    btn2: TBitBtn;
    lbl9: TLabel;
    lbl10: TLabel;
    RvProject7: TRvProject;
    RvDataSetConnection7: TRvDataSetConnection;
    qrybuckup: TADOQuery;
    btn11: TBitBtn;
    ts3: TTabSheet;
    lbl11: TLabel;
    impresora2: TGroupBox;
    impresora3: TGroupBox;
    btn13: TBitBtn;
    btn14: TBitBtn;
    btn15: TBitBtn;
    btn16: TBitBtn;
    procedure SALIR2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16Exit(Sender: TObject);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit22KeyPress(Sender: TObject; var Key: Char);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);
    procedure Edit24KeyPress(Sender: TObject; var Key: Char);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit18Click(Sender: TObject);
    procedure Edit17Exit(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure Edit18Exit(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);        
    procedure BitBtn14Click(Sender: TObject);   
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure CerrarSesion1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn4Click(Sender: TObject);      
    procedure btn5Click(Sender: TObject);
    procedure ts1Show(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure ts2Show(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
Pantalla_inicio, Pantalla_Documentos, Pantalla_Aud, Unit4, Unit8, Unit9,
  Unit14, Unit15;

{$R *.dfm}

procedure TForm2.SALIR2Click(Sender: TObject);
begin
 if Application.MessageBox('Abandonara la sesion ¿Esta seguro?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
  application.Terminate;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
var
doc:integer;
begin                 

edit13.Clear;
edit14.Clear;
edit15.Clear;
edit16.Clear;
edit17.Clear;
edit18.Clear;
edit19.Clear;

label33.Caption:= '---';
label33.Color:= clBtnFace;

if (edit20.Text = '')        
  then
    showmessage('Ingre un documento a buscar')
  else
    begin
      doc:= strtoint(edit20.Text);
      if (Libreria_Programa.ValidarPersona(doc) = true)
        then
          begin
            label33.Caption:= 'Existente';
            label33.Color:= clgreen;
            ADOQuery.SQL.Text:= ('Select * from Personas where P_Nrodoc='+inttostr(doc));
            ADOQuery.Open;   
            //Muestra      
            Edit13.Text:= ADOQuery.FieldByName('P_Nombre').Value;                                       
            Edit14.Text:= ADOQuery.FieldByName('P_Apellido').Value;
            Edit15.Text:= Inttostr(ADOQuery.FieldByName('P_Nrodoc').Value);
            Edit16.Text:= Inttostr(ADOQuery.FieldByName('P_Tipodoc').Value);
            Edit17.Text:= ADOQuery.FieldByName('P_Edad').Value;
            Edit18.Text:= ADOQuery.FieldByName('P_Sexo').Value;                   
            Edit19.Text:= ADOQuery.FieldByName('P_Localidad').Value;
            edit1.Text:=  ADOQuery.FieldByName('cod_zona').Value;
            //
            ADOQuery.SQL.Text:= ('Select * from TipoDocumento Where TP_Clave='+edit16.Text);
            ADOQuery.Open;
            combobox2.Text:= ADOQuery.fieldbyname('TP_Sigla').Value;
            edit16.Color:= clskyblue;
            //
            ADOQuery.SQL.Text:= ('Select * from Zonas_Ventas Where ZC_Clave='+edit1.Text);
            ADOQuery.Open;
            combobox3.Text:= ADOQuery.fieldbyname('ZC_Descripcion').Value;
            edit1.Color:= clskyblue;

          end
        else
          begin
            label33.Caption:= 'Inexistente';
            label33.Color:= clred;
          end
     end;
end;

procedure TForm2.TabSheet3Show(Sender: TObject);
var
tipo,zona: string;
permi: integer;
//clave: integer;
begin

//Permiso para acceder
permi:= Pantalla_Inicio.permiso;
case permi of

  4: begin
      tabsheet3.Visible:= false;
     end;

  6: begin
      tabsheet3.Visible:= false;
     end;
end;
//blanqueo y limpieza de pantalla
combobox2.Clear;
combobox3.Clear;
edit20.Clear;
edit13.Clear;
edit14.Clear;
edit15.Clear;
edit16.Clear;
edit16.Color:= clwindow;
edit17.Clear;
edit18.Clear;
edit19.Clear;
edit1.Clear;
edit1.Color:= clwindow;
combobox2.ItemIndex:= -1;

label33.Caption:= '---';
label33.Color:= clBtnFace;

  ADOQUery.SQL.Text:= ('Select * from TipoDocumento');
  ADOQuery.Open;
  ADOQuery.First;

  While not (ADOQuery.Eof) do
    begin
      tipo:= ADOQuery.FieldByName('TP_Sigla').Value;
      combobox2.AddItem(tipo,combobox1);
      ADOQuery.Next;
    end;

    ADOQUery.SQL.Text:= ('Select * from Zonas_Ventas');
    ADOQuery.Open;
    ADOQuery.First;

    while not (ADOQuery.EOF) do
      begin
        zona:= ADOQuery.FieldByName('ZC_Descripcion').Value;
        //clave:= ADOQuery.FieldByName('ZC_Clave').Value;
        combobox3.AddItem(zona, combobox2);
        ADOQuery.Next;
      end;

end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var
doc: integer;
begin

if (edit13.Text = '') or (edit1.Text = '') or (edit14.text = '') or (edit15.text = '') or (edit16.text = '') or (edit17.Text = '') or (edit18.Text = '') or (edit19.text = '')
  then
    showmessage('ingrese todos los datos')
  else
    begin
      doc:= strtoint(edit15.Text);                // CARGA DE USUARUO NUEVO y VALIDACION EXISTENCIA
      if (Libreria_programa.ValidarPersona(doc) = true)
        then
          showmessage('Ya existe la persona que desea ingresar.')
        else
          begin
            if (Libreria_Programa.ValidarDocumento(strtoint(edit16.Text)) = true)
              then
                begin
                  if (edit18.Text = 'F') or (edit18.Text = 'M')
                    then
                      begin
                        Libreria_Programa.AltaPersona(edit13.Text,edit14.Text,edit17.Text,strtoint(edit15.Text),strtoint(edit16.Text),edit18.Text,edit19.Text,strtoint(edit1.Text));
                        LIbreria_Programa.CargarAuditoria(StrToInt(Edit15.Text),StrToInt(edit16.Text),Edit13.Text,Edit14.Text,Edit17.Text,Edit18.Text,StrToInt(Edit1.Text),Pantalla_inicio.nombre,Libreria_programa.GetPCName,'ALTA');
                      end
                    else
                      begin
                        edit18.Enabled:= true;
                        edit18.Text:= 'Debe ingresar solo letra M o F';
                        edit18.Color:= clred;
                      end
                end
              else
                showmessage('Ingreso un tipo de documento erroneo');
          end;
    end;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var
doc: integer;
dni,tipod,cod: Integer;
nom,ap,ed,sexo: string;
begin
if edit20.Text = ''
  then
    Showmessage('Debe ingresar documento de una persona para eliminar')
  else                   
    begin
      doc:= strtoint(edit20.Text);
      ADOquery.SQL.Text:= ('Select * from Personas where P_Nrodoc='+inttostr(doc));
      ADOquery.Open;
      dni:= ADOquery.fieldByName('P_Nrodoc').Value;
      tipod:= ADOquery.fieldByName('P_Tipodoc').Value;
      nom:= ADOquery.fieldByName('P_Nombre').Value;
      ap:= ADOquery.fieldByName('P_Apellido').Value;
      ed:= ADOquery.fieldByName('P_edad').Value;
      sexo:= ADOquery.fieldByName('P_Sexo').Value;
      cod:= ADOquery.fieldByName('Cod_Zona').Value;
      //
      LIbreria_Programa.CargarAuditoria(dni,tipod,nom,ap,ed,sexo,cod,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'BAJA');
      Libreria_Programa.BajaPersona(doc);
    end;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
   if edit20.Text = ''
    then
      showmessage('Debe buscar una persona para modificar sus atributos')
    else
      if Application.MessageBox('¿Esta seguro de modificar el usuario?','Atención',mb_OkCancel +
                 mb_IconQuestion)= idOk
            then                                                      
              begin
                Libreria_Programa.ModificarPersona(Edit13.Text,edit14.Text,edit17.Text,strtoint(edit20.Text),strtoint(edit16.Text),edit18.Text,edit19.Text,strtoint(edit15.Text),strtoint(edit1.Text));
                LIbreria_Programa.CargarAuditoria(StrToInt(Edit15.Text),StrToInt(edit16.Text),Edit13.Text,Edit14.Text,Edit17.Text,Edit18.Text,StrToInt(Edit1.Text),Pantalla_inicio.nombre,Libreria_programa.GetPCName,'MODIFICACION');
              end
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
var
siglad: integer;

begin
edit22.clear;
edit23.clear;
edit24.clear;
Label38.Caption:= '';
Label38.Color:= clBtnFace;

  if edit21.Text = ''         
    then
      showmessage('Porfavor, ingrese un tipo de documento a buscar')
    else
    begin
    siglad:= strtoint(edit21.text);
      if (Libreria_Programa.ValidarDocumento(siglad) = true)
        then
          begin
            Label38.Caption:= 'Existente';            
            Label38.Color:= clgreen;
            ADOQUery.SQL.Text:=('Select * from TipoDocumento where TP_Clave='+inttostr(siglad));
            ADOQuery.Open;
            edit22.Text:= ADOQuery.FieldByName('TP_Clave').Value;
            edit23.Text:= ADOQuery.FieldByName('TP_Descripcion').Value;
            Edit24.Text:= ADOQuery.FieldByName('TP_Sigla').Value;
          end
        else                   
          begin
            edit21.SetFocus;
            label38.Caption:= 'inexistente';
            Label38.Color:= clred;
          end ;
     end;                                   
end;

procedure TForm2.TabSheet4Show(Sender: TObject);
var
tipo: string;
permi: integer;

begin
//Se guarda permiso para acceso
permi:= Pantalla_Inicio.permiso;

case permi of

  4: begin
      tabsheet4.Visible:= false;
     end;

  6: begin
      tabsheet4.Visible:= false;
     end;     

end;

//Blanqueo
combobox1.Clear;
edit21.Clear;
edit22.clear;
edit23.Clear;
edit24.Clear;
Label38.Caption:= '';
Label38.Color:= clBtnFace;

  ADOQUery.SQL.Text:= ('Select * from TipoDocumento');
  ADOQuery.Open;
  ADOQuery.First;

  While not (ADOQuery.Eof) do
    begin
      tipo:= ADOQuery.FieldByName('TP_Sigla').Value;
      combobox1.AddItem(tipo,combobox1);
      ADOQuery.Next;
    end;


end;

procedure TForm2.BitBtn11Click(Sender: TObject);
var
Sig: string;
begin
Sig:= ComboBox1.Items[ComboBox1.ItemIndex];

  ADOQuery.SQL.Text:= ('Select * from TipoDocumento Where TP_Sigla='+#39+Sig+#39);
  ADOQuery.Open;
  ADOQuery.First;

  if not(sig = '')
    then
      begin
        edit21.Text:= ADOQuery.FieldByName('TP_Clave').Value;
                bitbtn7.Click;
      end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
tipo: string;
zona: string;
//clave: integer;
begin
edit20.Clear;
edit13.Clear;
edit14.clear;
edit15.clear;
edit16.clear;
edit17.clear;
edit18.clear;
edit19.Clear;
edit1.Clear;
edit1.Color:= ClWindow;
label33.Caption:= '---';
edit16.Color:= ClWindow;
label33.Color:= clBtnFace;
Combobox2.Clear;
combobox3.Clear;

  ADOQUery.SQL.Text:= ('Select * from TipoDocumento');
  ADOQuery.Open;
  ADOQuery.First;

  While not (ADOQuery.Eof) do
    begin
      tipo:= ADOQuery.FieldByName('TP_Sigla').Value;
      combobox2.AddItem(tipo,combobox1);
      ADOQuery.Next;
    end;

  ADOQUery.SQL.Text:= ('Select * from Zonas_Ventas');
    ADOQuery.Open;
    ADOQuery.First;

    while not (ADOQuery.EOF) do
      begin
        zona:= ADOQuery.FieldByName('ZC_Descripcion').Value;
        //clave:= ADOQuery.FieldByName('ZC_Clave').Value;
        combobox3.AddItem(zona, combobox2);
        ADOQuery.Next;
      end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
edit1.Clear;
Edit2.Clear;
edit3.clear;
Edit4.Clear;    
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;

label24.Caption:= '------';
label24.Color:= clBtnFace;
CheckBox1.Checked:= false;
CheckBox2.Checked:= false;
CheckBox3.Checked:= false;
CheckBox4.Checked:= false;
CheckBox5.Checked:= false;
end;

procedure TForm2.BitBtn8Click(Sender: TObject); //Alta Documento
var
siglad: integer;
begin
if (edit22.Text = '') or (edit23.Text = '') or (edit24.Text = '')
  then
    showmessage('Verifique y rellene todos los campos para ingresar un registro nuevo')
  else
    begin
      siglad:= strtoint(edit22.text);
      if (Libreria_Programa.ValidarDocumento(siglad) = true)
        then
          showmessage('Ya existe el tipo de documento que desea ingresar')
        else
          begin
              Libreria_Programa.AltaDocumento(strtoint(edit22.Text),edit23.Text,edit24.Text);
              Libreria_programa.CargarAuditoriaDoc(strtoint(edit22.Text),edit23.Text,edit24.Text,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'ALTA');
         end;
    end;      
end;

procedure TForm2.BitBtn9Click(Sender: TObject);  // Baja DOcumento
var
siglad: integer;
id:integer;
desc,sigla: string;
begin

if edit21.Text = ''
  then
    showmessage('Ingrese un tipo de documento a eliminar')
  else
    begin
      siglad:= strtoint(edit21.text);
      ADOQUery.SQL.Text:= ('Select * from Personas where P_Tipodoc='+inttostr(siglad));
      ADOQuery.Open;
      ADOQuery.First;
      if (ADOQUERY.Eof = false)
        then
          showmessage('Hay personal que requieren de este tipo de documento, elimine los registros persona antes del tipo documento')
        else
          begin
              ADOQUery.SQL.Text:= ('Select * from TipoDocumento where TP_Clave='+inttostr(siglad));
              ADOQuery.Open;
              ADOQuery.First;
              id:= ADOQuery.fieldbyname('TP_Clave').Value;
              desc:= ADOQuery.fieldbyname('TP_descripcion').Value;
              sigla:= ADOQuery.fieldbyname('TP_sigla').Value;

              Libreria_Programa.BajaDocumento(siglad);
              Libreria_programa.CargarAuditoriaDoc(id,desc,sigla,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'BAJA');
          end;
    end;
end;

procedure TForm2.BitBtn10Click(Sender: TObject);  //Modif. Documento
begin
  if (edit21.Text = '') or (edit22.Text = '') or (edit23.Text = '') or (edit24.Text = '')
    then
      showmessage('Busque un documento o complete todos los campos que desea modificar')
    else                                                 
      if Application.MessageBox('¿Esta seguro de modificar el documento?','Atención',mb_OkCancel +
                 mb_IconQuestion)= idOk
            then                                                                              
              begin
              Libreria_programa.CargarAuditoriaDoc(strtoint(edit22.Text),edit23.Text,edit24.Text,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'MODIFICACION');
              Libreria_programa.ModificarDocumento(strtoint(edit22.Text),edit23.Text,strtoint(edit21.Text),edit24.Text);
              end
end;


procedure TForm2.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key = #8) 
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

procedure TForm2.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
key := UpCase(key);
  if not (key = #8) and not(key = #32) and not (key = #91) and not (key = #94) and not (key = #96)
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

procedure TForm2.Edit14KeyPress(Sender: TObject; var Key: Char);
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


procedure TForm2.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key = #8)
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

procedure TForm2.Edit17KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm2.Edit18KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm2.Edit19KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm2.Edit16Exit(Sender: TObject);
var
A: integer;
begin
    if edit16.Text = ''
      then
        begin
          edit16.Color:= clwindow;
        end
      else
        if not (edit16.Text = '')
          then
            if (Libreria_Programa.ValidarDocumento(strtoint(edit16.Text)) = false)
              then
                begin
                  edit16.Color:= clred;
                  combobox2.SetFocus;
                  combobox2.Perform(CB_SHOWDROPDOWN, 1, 0);
                end
              else
                begin                                 
                    edit16.Color:= clSkyBlue;
                    ADOQuery.SQL.Text:= ('Select * from TipoDocumento Where TP_Clave='+edit16.Text);
                    ADOQuery.Open;
                    ADOQuery.First;
                    combobox2.Text:= ADOQuery.fieldbyname('TP_Sigla').Value;
                end;
end;

procedure TForm2.Edit20KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm2.Edit22KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key = #8)
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

procedure TForm2.Edit23KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm2.Edit24KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm2.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key = #8) 
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

procedure TForm2.Edit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_F1)
    then
      begin
        combobox2.SetFocus;
        combobox2.Perform(CB_SHOWDROPDOWN, 1, 0);
      end;

end;



procedure TForm2.Edit18Click(Sender: TObject);
begin
edit18.Color:= clwindow;
edit18.Clear;
end;

procedure TForm2.Edit17Exit(Sender: TObject);
var
A: integer;
begin

if edit17.Text = ''
      then
          edit17.Color:= clwindow
      else
          begin
           a:= strtoint(edit17.Text);
            if (a > 999)
              then
                begin
                  edit17.Text:='Debe ingresar una edad correcta';
                  edit17.SetFocus;
                end;
          end;
end;

procedure TForm2.ComboBox2Select(Sender: TObject);

var
Sig: string;
begin
Sig:= ComboBox2.Items[ComboBox2.ItemIndex];

  ADOQuery.SQL.Text:= ('Select * from TipoDocumento Where TP_Sigla='+#39+Sig+#39);
  ADOQuery.Open;
  ADOQuery.First;              
    if not (ADOQuery.IsEmpty)
    then
      begin
        edit16.Clear;
        edit16.Text:= ADOQuery.FieldByName('TP_Clave').Value;
        edit16.SetFocus;
        edit16.Color:= clSkyBlue;
        edit17.SetFocus;
      end
     else
      combobox2.ItemIndex:= 0;
end;

procedure TForm2.Edit18Exit(Sender: TObject);
begin
  if edit18.Text = ''    
    then
      edit18.Color:= clwindow
    else  
      if not (edit18.Text = 'F') and not (edit18.Text = 'M')
        then
          begin
            edit18.Enabled:= true;
            edit18.Text:= 'Debe ingresar solo letra M o F';
            edit18.Color:= clred;
            edit18.SetFocus;
          end;
end;



procedure TForm2.ComboBox3Select(Sender: TObject);
var
Sig: string;
begin
Sig:= ComboBox3.Items[ComboBox3.ItemIndex];

  ADOQuery.SQL.Text:= ('Select * from Zonas_Ventas Where ZC_Descripcion='+#39+Sig+#39);
  ADOQuery.Open;
  ADOQuery.First;              
    if not (ADOQuery.IsEmpty)
    then
      begin
        edit1.Clear;
        edit1.Text:= ADOQuery.FieldByName('ZC_Clave').Value;
        edit1.SetFocus;
        edit1.Color:= clSkyBlue;
        edit1.SetFocus;
      end
     else
      combobox3.ItemIndex:= 0;
end;

procedure TForm2.Edit1Exit(Sender: TObject);
begin
    if edit1.Text = ''
      then
        begin
          edit1.Color:= clwindow;
        end
      else
        if not (edit1.Text = '')
          then
            if (Libreria_Programa.ValidarZona(strtoint(edit1.Text)) = false)
              then
                begin
                  edit1.Color:= clred;
                  combobox3.SetFocus;
                  combobox3.Perform(CB_SHOWDROPDOWN, 1, 0);
                end
              else
                begin
                    edit1.Color:= clSkyBlue;
                    ADOQuery.SQL.Text:= ('Select * from Zonas_Ventas Where ZC_Clave='+edit1.Text);
                    ADOQuery.Open;
                    ADOQuery.First;
                    combobox3.Text:= ADOQuery.fieldbyname('ZC_Descripcion').Value;
                end;
    end;
    
procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  A: integer;
begin
  if (key = VK_F1)
    then
      begin
        combobox3.SetFocus;
        combobox3.Perform(CB_SHOWDROPDOWN, 1, 0);
      end;

  if (key = VK_TAB)
    then
    if edit1.Text = ''
      then
        begin
          edit1.Color:= clwindow;
        end
      else
        if not (edit1.Text = '')
          then
            if (Libreria_Programa.ValidarZona(strtoint(edit1.Text)) = false)
              then
                begin
                  edit1.Color:= clred;
                  combobox3.SetFocus;
                  combobox3.Perform(CB_SHOWDROPDOWN, 1, 0);
                end
              else
                begin
                    edit1.Color:= clSkyBlue;
                    ADOQuery.SQL.Text:= ('Select * from Zonas_Ventas Where ZC_Clave='+edit1.Text);
                    ADOQuery.Open;
                    ADOQuery.First;
                    combobox3.Text:= ADOQuery.fieldbyname('ZC_Descripcion').Value;
                end;

end;

procedure TForm2.BitBtn5Click(Sender: TObject);
var
perfil: integer;
begin
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;

checkbox1.Checked:= false;
checkbox2.Checked:= false;
checkbox3.Checked:= false;
checkbox4.Checked:= false;
checkbox5.Checked:= false;
label24.Caption:= '------';
label24.Color:= clBtnFace;

if (edit7.Text = '')
  then
    showmessage('ingrese un usuario a buscar')
  else
    begin
      if Libreria_Programa.ValidarAdministrador(edit7.Text)
        then
          begin
            label24.Caption:= 'Existente';
            label24.Color:= clgreen;
            ADOQuery.SQL.Text:= ('Select * from Usuarios where Usuario_ID='+#39+edit7.Text+#39);
            ADOQuery.Open;
            //Muestra
            Edit2.Text:= ADOQuery.FieldByName('Usuario_Nombre').Value;
            Edit3.Text:= ADOQuery.FieldByName('Usuario_ID').Value;
            Edit4.Text:= ADOQuery.FieldByName('Usuario_Pass').Value;
            Edit5.Text:= ADOQuery.FieldByName('Usuario_Pass').Value;
            Edit6.Text:= ADOQuery.FieldByName('Usuario_Email').Value;
            perfil:= ADOQuery.FieldByName('Usuario_Perfil').Value;
            if (Perfil = 1)
              then
                begin
                  Checkbox1.Checked:= true;
                  checkbox2.Checked:= true;
                end
              else
                if  (Perfil = 2)
                  then
                    begin
                      Checkbox1.Checked:= true;
                      checkbox2.Checked:= true;
                      checkbox3.Checked:= true;
                    end
                  else
                    if (Perfil = 3)
                      then
                        begin
                          Checkbox1.Checked:= true;
                          checkbox2.Checked:= true;
                          checkbox3.Checked:= true;
                          checkbox4.Checked:= true;
                        end
                      else
                        if (perfil = 4)
                          then
                            begin
                              Checkbox1.Checked:= true;
                              checkbox2.Checked:= true;
                              checkbox3.Checked:= true;
                              checkbox4.Checked:= true;
                              checkbox5.Checked:= true;
                            end ;
          end
         else
          begin
            label24.Caption:= 'Inexistente';
            label24.Color:= clred;
          end;
    end;
end;

procedure TForm2.BitBtn13Click(Sender: TObject);
var
permiso: integer;
begin
if (edit2.Text = '') or (edit3.Text = '') or (edit4.Text = '') or (edit5.Text = '') or (edit6.Text = '')
  then
    showmessage('Verifique y rellene todos los campos para ingresar un registro nuevo')
  else
  if ((checkbox1.Checked = false) and (checkbox2.Checked = false) and (checkbox3.Checked = false) and (checkbox4.Checked = false) and (checkbox5.Checked = false) and (chk1.Checked = False))
    then
    showmessage('debe elegir algun privilegio de acceso')
    else
      begin
        if (Libreria_Programa.ValidarAdministrador(edit2.Text) = true)
          then
            showmessage('Ya existe el usuario que desea ingresar')
          else
            begin
              if not (Edit4.Text = Edit5.Text)
                then
                  ShowMessage('debe coincider la contraseña')
                else
                 begin
                  if (chk1.Checked)
                    then
                      permiso:= 6
                    else
                      if (CheckBox5.Checked)
                        then
                          permiso:= 4
                        else
                          if (checkbox4.Checked)
                            then                
                              permiso:= 3
                            else
                              if (CheckBox3.Checked)
                                then
                                  permiso:= 2
                                else
                                  if (CheckBox2.Checked)
                                    then
                                      permiso:= 1
                                    else
                                      if (CheckBox1.Checked)
                                        then
                                          permiso:= 1;

                              Libreria_Programa.AltaAdministrador(edit3.Text,edit2.Text,edit4.Text,edit6.Text,permiso);
                              Libreria_programa.CargarAuditoriaUsuario(edit3.text,edit2.text,edit4.text,edit6.text,permiso,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'ALTA');
                 end ;
             end;    
      end;
end;

procedure TForm2.BitBtn15Click(Sender: TObject);
var
id,nom,pass,mail: string;
permiso: integer;
begin
if edit7.Text = ''
  then            
    showmessage('Ingrese un usuario para eliminar')
  else                                         
    begin
      ADOquery.SQL.Text:= ('Select * from Usuarios where Usuario_ID='+#39+edit7.Text+#39);
      ADOquery.Open;
      id:= ADOquery.fieldByName('Usuario_Id').Value;
      nom:= ADOquery.fieldByName('Usuario_Nombre').Value;
      pass:= ADOquery.fieldByName('Usuario_Pass').Value;
      mail:= ADOquery.fieldByName('Usuario_Email').Value;
      permiso:= ADOquery.fieldByName('Usuario_perfil').Value;

      Libreria_programa.CargarAuditoriaUsuario(id,nom,pass,mail,permiso,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'BAJA');
      Libreria_Programa.BajaAdministrador(edit7.Text);
      label24.Caption:= 'ELIMINADO';
      label24.Color:= clred;
   end;
end;

procedure TForm2.BitBtn14Click(Sender: TObject);
var
permiso: integer;
begin
   if edit7.Text = ''
    then
      showmessage('Debe buscar un usuario para modificar')
    else
      if Application.MessageBox('¿Esta seguro de modificar el usuario?','Atención',mb_OkCancel +
                 mb_IconQuestion)= idOk
            then
              begin
                  if (chk1.Checked)
                    then
                      permiso:= 6
                    else
                      if (CheckBox5.Checked)
                        then
                          permiso:= 4
                        else
                          if (checkbox4.Checked)
                            then
                              permiso:= 3
                            else
                              if (CheckBox3.Checked)
                                then
                                  permiso:= 2
                                else
                                  if (CheckBox2.Checked)
                                    then
                                      permiso:= 1
                                    else
                                      if (CheckBox1.Checked)
                                        then
                                          permiso:= 1;

                Libreria_programa.ModificarAdministrador(edit7.text,edit3.Text,edit2.Text,edit4.Text,edit6.Text,permiso);
                Libreria_programa.CargarAuditoriaUsuario(edit3.text,edit2.text,edit4.text,edit6.text,permiso,Pantalla_inicio.nombre,Libreria_programa.GetPCName,'MODIFICACION')
              end
end;


procedure TForm2.TabSheet1Show(Sender: TObject);
var
permi: integer;
begin
permi:= Pantalla_Inicio.permiso;

case permi of

  1: begin
      tabsheet1.Visible:= false;
     end;

  2: begin
      tabsheet1.Visible:= false;
     end;

  4: begin
      tabsheet1.Visible:= false;
     end;

  6: begin
      tabsheet1.Visible:= false;
     end;     
end;

edit1.Clear;
Edit2.Clear;
edit3.clear;
Edit4.Clear;    
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;

label24.Caption:= '------';
label24.Color:= clBtnFace;
CheckBox1.Checked:= false;
CheckBox2.Checked:= false;
CheckBox3.Checked:= false;
CheckBox4.Checked:= false;
CheckBox5.Checked:= false;
end;

procedure TForm2.BitBtn16Click(Sender: TObject);
begin
form3.show;
form2.Hide;
end;

procedure TForm2.CerrarSesion1Click(Sender: TObject);
begin
 if Application.MessageBox('¿Esta seguro de cerrar sesion?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
    begin
      form1.Show;
      form2.Hide;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
label7.Caption:= Datetostr(date);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
label43.Caption:= timetostr(time);
end;


procedure TForm2.Button4Click(Sender: TObject);
begin
with ADOQuery2 do
begin
  close;
    SQL.Clear;
      SQL.Text:='SELECT * From TipoDocumento';
      Open;
    RvProject1.Execute
end;

end;

procedure TForm2.TabSheet2Show(Sender: TObject);
var
id,nombre,pw,mail,permiso: string;
tipo,num: integer;
permi: integer;
numero: Integer;
begin
// ------------
for numero:=0 to 4 do
begin
            stringgrid2.Cells [0,numero]:= '';
            stringgrid2.Cells [1,numero]:= '';
            stringgrid2.Cells [2,numero]:= '';
            stringgrid2.Cells [3,numero]:= '';
            stringgrid2.Cells [4,numero]:= '';
            stringgrid2.Cells [5,numero]:= '';
end;
// ------------

permi:= Pantalla_Inicio.permiso;

case permi of             

  1: begin
      tabsheet2.Visible:= false;
     end;

  2: begin
      tabsheet2.Visible:= false;
     end;

  3: begin
      tabsheet2.Visible:= false;
     end;
   
  6: begin
      tabsheet2.Visible:= false;
     end;
end;


  num:= 0;
      ADOQUery.SQL.Text:= ('Select * from Usuarios ORDER BY Usuario_ID');
      ADOQuery.Open;
      ADOQuery.First;

      While not (ADOQuery.Eof) do
          begin
            id:= ADOquery.FieldByName('Usuario_ID').Value;
            nombre:= ADOquery.FieldByName('Usuario_nombre').Value;
            pw:= ADOquery.FieldByName('Usuario_pass').Value;
            mail:= ADOquery.FieldByName('Usuario_Email').Value;
            tipo:= ADOquery.FieldByName('Usuario_perfil').Value;
            //
            ADOQuery1.SQL.Text:= ('Select * from Perfiles where P_Clave='+inttostr(tipo));
            ADOQuery1.Open;
            ADOQuery1.First;
            //
            permiso:= ADOquery1.FieldByName('P_Descripcion').Value;
            //
            stringgrid2.Cells [0,num]:= id;
            stringgrid2.Cells [1,num]:= nombre;
            stringgrid2.Cells [2,num]:= pw;
            stringgrid2.Cells [3,num]:= mail;
            stringgrid2.Cells [4,num]:= inttostr(tipo);
            stringgrid2.Cells [5,num]:= permiso;
            //
            num:=num+1;
            ADOQuery.Next;
          end;

end;
                          

procedure TForm2.btn6Click(Sender: TObject);
begin
Form4.Show;
Form4.btn1.Visible:= true;
Form4.btn3.Visible:= false;
Form4.btn4.Visible:= false;
Form4.btn5.Visible:= false;
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
Form4.Show;
Form4.btn1.Visible:= false;
Form4.btn3.Visible:= true;
Form4.btn4.Visible:= false;
Form4.btn5.Visible:= false;
end;

procedure TForm2.btn8Click(Sender: TObject);
begin
Form4.Show;
Form4.btn1.Visible:= false;
Form4.btn3.Visible:= False;
Form4.btn4.Visible:= True;
Form4.btn5.Visible:= false;
end;

procedure TForm2.btn3Click(Sender: TObject);
var
  aa : string ;
  FStream: TFileStream;
  j: integer;

  clave: integer;
  desc,sigla,usuario,terminal,accion: string;

  num: integer;
begin
if  not (Pantalla_inicio.permiso = 4) and not (Pantalla_inicio.permiso = 5)
  then
    showmessage('No tiene acceso a esta accion')
  else
  begin
        SaveDialog1.FileName :=
           'Auditoria Documentos' ;
        saveDialog1.Filter := 'Excel|*.xls|PDF|*.pdf';

        if not SaveDialog1.Execute
        then
          begin
            exit ;
          end
        else
        if SaveDialog1.FilterIndex = 1
          then                                                                 
            begin
               begin
                aa := SaveDialog1.FileName +'.xls' ;
                FStream := TFileStream.Create( aa, fmCreate);
                XlsBeginStream(FStream, 0);

                // Crear las cabeceras de las columnas
                    XlsWriteCellLabel(FStream, 1, 1, ' Auditoria De ');
                    XlsWriteCellLabel(FStream, 2, 1, ' Documentos ');
                    //
                    XlsWriteCellLabel(FStream, 1, 2, ' Fecha ');
                    XlsWriteCellLabel(FStream, 2, 2, label7.Caption );
                    XlsWriteCellLabel(FStream, 3, 2, ' Hora ');
                    XlsWriteCellLabel(FStream, 4, 2, label43.Caption );
                    //
                    XlsWriteCellLabel(FStream, 1, 4, ' Doc Clave ');
                    XlsWriteCellLabel(FStream, 2, 4, ' Doc Descrip ');
                    XlsWriteCellLabel(FStream, 3, 4, ' Sigla ');
                    XlsWriteCellLabel(FStream, 4, 4, ' Usuario ');
                    XlsWriteCellLabel(FStream, 5, 4, ' Fecha  ');
                    XlsWriteCellLabel(FStream, 6, 4, ' Terminal ');
                    XlsWriteCellLabel(FStream, 7, 4, ' Accion ');

                    j:= 5;

                      ADOQUery.SQL.Text:= ('Select * from Auditoria_Doc ORDER BY A_Doc_Clave,A_Doc_Fecha');
                      ADOQuery.Open;
                      ADOQuery.First;


                      While not (ADOQuery.Eof) do
                      begin
                        clave:= ADOquery.FieldByName('A_Doc_Clave').Value;
                        desc:= ADOquery.FieldByName('A_Doc_Descripcion').Value;
                        sigla:= ADOquery.FieldByName('A_Doc_Sigla').Value;
                        usuario:= ADOquery.FieldByName('A_Doc_Usuario').Value;
                        terminal:= ADOquery.FieldByName('A_Doc_Terminal').Value;
                        accion:= ADOquery.FieldByName('A_Doc_Accion').Value;

                                XlsWriteCellLabel(FStream, 1, j, inttostr(clave));
                                XlsWriteCellLabel(FStream, 2, j, desc);
                                XlsWriteCellLabel(FStream, 3, j, sigla);
                                XlsWriteCellLabel(FStream, 4, j, usuario);
                                XlsWriteCellLabel(FStream, 5, j, ADOquery.FieldByName('A_Doc_fecha').Value);
                                XlsWriteCellLabel(FStream, 6, j, terminal);
                                XlsWriteCellLabel(FStream, 7, j, accion);


                        j:= j+1;

                        ADOQuery.Next;
                      end;
               end;
               XlsEndStream(FStream);
               FStream.Free;
            end
          else
            if SaveDialog1.FilterIndex = 2
              then
                begin
                  aa := SaveDialog1.FileName +'.pdf' ;
                  RvSystem1.DefaultDest:= rdFile;
                  RvSystem1.DoNativeOutput:= false;
                  RvSystem1.RenderObject:= rvRenderPDF2;
                  RvSystem1.OutputFileName:= aa;
                  RvSystem1.SystemSetups:= RvSystem1.SystemSetups -[ssAllowSetup];
                  Rvproject5.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Documentos.rav';
                  RvProject5.Engine:= RvSystem1;
                  rvproject5.Execute;
                end;
     end;
end;

procedure TForm2.btn1Click(Sender: TObject);
var
  aa : string ;
  FStream: TFileStream;
  
begin
  if Seleccion_Empresa.empresa = 'Empresa 1'
      then
        begin
            SaveDialog1.FileName :=
                 'Base de Datos - Empresa 1' ;
        end
      else
        if Seleccion_Empresa.empresa = 'Empresa 2'
          then
            begin
              SaveDialog1.FileName :=
                 'Base de Datos - Empresa 2' ;
            end;

        saveDialog1.Filter := 'BD|*.bak';

        if not SaveDialog1.Execute
        then
          begin
            exit ;
          end             
        else
          begin
              if Seleccion_Empresa.empresa = 'Empresa 1'
                then
                  begin                                
                    aa := SaveDialog1.FileName +'.bak' ;
                    ADOQuery1.SQL.Text:='backup database Gestion_Documentos to disk ='+#39+aa+#39;
                    ADOQuery1.ExecSQL;
                  end
                else
                  if Seleccion_Empresa.empresa = 'Empresa 2'
                    then
                      begin
                        aa := SaveDialog1.FileName +'.bak' ;
                        ADOQuery1.SQL.Text:='backup database Gestion_Documentos2 to disk ='+#39+aa+#39;
                        ADOQuery1.ExecSQL;
                      end;
          end;
                             
    if Application.MessageBox('Generó un respaldo de datos exitosamente..','Atención',
              mb_IconQuestion)= idOk
               then
                  Libreria_programa.CargarAuditoriaDatos(Pantalla_inicio.nombre,Libreria_programa.GetPCName,'BUCKUP - Generada');
end;


procedure TForm2.btn9Click(Sender: TObject);
begin
form7.show;
Form2.Hide;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
Form2.Caption:= Seleccion_Empresa.empresa+' - Conectado - Usuario en curso: '+Pantalla_inicio.nombre+'  -  Tipo Usuario: '+Pantalla_inicio.tipo;
TabSheet3.Show;
lbl7.Caption:= Pantalla_inicio.nombre+'  -  Tipo: '+Pantalla_inicio.tipo;
end;

procedure TForm2.btn4Click(Sender: TObject);
var
  aa : string ;
  FStream: TFileStream;
  j: integer;
  Nombre,Apellido: string;
  nro,tipod,venta: integer;
  Usuario: string;
  edad,sexo: string;
  accion, terminal: string;
  num: integer;
begin
if  not (Pantalla_inicio.permiso = 4) and not (Pantalla_inicio.permiso = 5)
  then
    showmessage('No tiene acceso a esta accion')
  else
  begin
        SaveDialog1.FileName :=
           'Auditoria PErsonas' ;
        saveDialog1.Filter := 'Excel|*.xls|PDF|*.pdf';

        if not SaveDialog1.Execute
        then
          begin
            exit ;
          end
        else
        if SaveDialog1.FilterIndex = 1
          then
            begin
               begin
                aa := SaveDialog1.FileName +'.xls' ;
                FStream := TFileStream.Create( aa, fmCreate);
                XlsBeginStream(FStream, 0);

                // Crear las cabeceras de las columnas
                    XlsWriteCellLabel(FStream, 1, 1, ' Auditoria De ');
                    XlsWriteCellLabel(FStream, 2, 1, ' Personas ');
                    //
                    XlsWriteCellLabel(FStream, 1, 2, ' Fecha ');
                    XlsWriteCellLabel(FStream, 2, 2, label7.Caption );
                    XlsWriteCellLabel(FStream, 3, 2, ' Hora ');
                    XlsWriteCellLabel(FStream, 4, 2, label43.Caption );
                    //
                    XlsWriteCellLabel(FStream, 1, 4, ' Nro Doc ');
                    XlsWriteCellLabel(FStream, 2, 4, ' Tipo Doc. ');
                    XlsWriteCellLabel(FStream, 3, 4, ' Nombre ');
                    XlsWriteCellLabel(FStream, 4, 4, ' Apellido ');
                    XlsWriteCellLabel(FStream, 5, 4, ' Edad  ');
                    XlsWriteCellLabel(FStream, 6, 4, ' Sexo ');
                    XlsWriteCellLabel(FStream, 7, 4, ' Provincia ');
                    XlsWriteCellLabel(FStream, 8, 4, ' Usuario ');
                    XlsWriteCellLabel(FStream, 9, 4, ' Fecha ');
                    XlsWriteCellLabel(FStream, 10, 4, ' Terminal ');
                    XlsWriteCellLabel(FStream, 11, 4, ' Accion ');

                    j:= 5;

                      ADOQUery.SQL.Text:= ('Select * from Auditoria ORDER BY nro_Doc,A_Fecha');
                      ADOQuery.Open;
                      ADOQuery.First;


                      While not (ADOQuery.Eof) do
                      begin
                        nro:= ADOQuery.FieldByName('nro_doc').Value;
                        tipod:= ADOQuery.FieldByName('A_Tipodoc').Value;
                        Nombre:= ADOQuery.FieldByName('A_Nombre').Value;
                        Apellido:= ADOQuery.FieldByName('A_Apellido').Value;
                        edad:= ADOQuery.FieldByName('A_Edad').Value;
                        Sexo:= ADOQuery.FieldByName('A_Sexo').Value;
                        venta:= ADOQuery.FieldByName('A_Prov').Value;
                        Usuario:= ADOQuery.FieldByName('A_Usuario').Value;
                        terminal:= ADOQuery.FieldByName('A_Terminal').Value;
                        accion:= ADOQuery.FieldByName('A_Accion').Value;

                                XlsWriteCellLabel(FStream, 1, j, inttostr(nro));
                                XlsWriteCellLabel(FStream, 2, j, inttostr(tipod));
                                XlsWriteCellLabel(FStream, 3, j, Nombre);
                                XlsWriteCellLabel(FStream, 4, j, Apellido);
                                XlsWriteCellLabel(FStream, 5, j, edad);
                                XlsWriteCellLabel(FStream, 6, j, Sexo);
                                XlsWriteCellLabel(FStream, 7, j, inttostr(venta));
                                XlsWriteCellLabel(FStream, 8, j, Usuario);
                                XlsWriteCellLabel(FStream, 9, j, ADOQuery.FieldByName('A_Fecha').Value);
                                XlsWriteCellLabel(FStream, 10, j, terminal);
                                XlsWriteCellLabel(FStream, 11, j, Accion);


                        j:= j+1;

                        ADOQuery.Next;
                      end;
               end;
               XlsEndStream(FStream);
               FStream.Free;
            end
          else
            if SaveDialog1.FilterIndex = 2
              then
                begin
                                    aa := SaveDialog1.FileName +'.pdf' ;
                  RvSystem1.DefaultDest:= rdFile;
                  RvSystem1.DoNativeOutput:= false;
                  RvSystem1.RenderObject:= rvRenderPDF2;
                  RvSystem1.OutputFileName:= aa;
                  RvSystem1.SystemSetups:= RvSystem1.SystemSetups -[ssAllowSetup];
                  Rvproject4.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Personas.rav';
                  RvProject4.Engine:= RvSystem1;
                  rvproject4.Execute;
                end;
     end;
end;

procedure TForm2.btn5Click(Sender: TObject);
var
  aa : string ;
  FStream: TFileStream;
  j: integer;

  id,nom,pass,mail,perfil: string;
  usu,terminal,accion: string;

  num: integer;
begin
if  not (Pantalla_inicio.permiso = 4) and not (Pantalla_inicio.permiso = 5)
  then
    showmessage('No tiene acceso a esta accion')
  else
  begin
        SaveDialog1.FileName :=
           'Auditoria Usuarios' ;
        saveDialog1.Filter := 'Excel|*.xls|PDF|*.pdf';

        if not SaveDialog1.Execute
        then
          begin
            exit ;
          end
        else
        if SaveDialog1.FilterIndex = 1
          then                                                                 
            begin
               begin
                aa := SaveDialog1.FileName +'.xls' ;
                FStream := TFileStream.Create( aa, fmCreate);
                XlsBeginStream(FStream, 0);

                // Crear las cabeceras de las columnas
                    XlsWriteCellLabel(FStream, 1, 1, ' Auditoria De ');
                    XlsWriteCellLabel(FStream, 2, 1, ' Usuarios ');
                    //
                    XlsWriteCellLabel(FStream, 1, 2, ' Fecha ');
                    XlsWriteCellLabel(FStream, 2, 2, label7.Caption );
                    XlsWriteCellLabel(FStream, 3, 2, ' Hora ');
                    XlsWriteCellLabel(FStream, 4, 2, label43.Caption );
                    //
                    XlsWriteCellLabel(FStream, 1, 4, ' Usu. ID ');
                    XlsWriteCellLabel(FStream, 2, 4, ' Nombre Usu. ');
                    XlsWriteCellLabel(FStream, 3, 4, ' Contraseña ');
                    XlsWriteCellLabel(FStream, 4, 4, ' E-Mail ');
                    XlsWriteCellLabel(FStream, 5, 4, ' Perfil ');
                    XlsWriteCellLabel(FStream, 6, 4, ' Usuario ');
                    XlsWriteCellLabel(FStream, 7, 4, ' Fecha ');
                    XlsWriteCellLabel(FStream, 8, 4, ' Terminal ');
                    XlsWriteCellLabel(FStream, 9, 4, ' Accion ');

                    j:= 5;

                      ADOQUery.SQL.Text:= ('Select * from Auditoria_Usuario ORDER BY A_Usu_ID,A_Usu_Fecha');
                      ADOQuery.Open;
                      ADOQuery.First;


                      While not (ADOQuery.Eof) do
                      begin
                          id:= ADOquery.FieldByName('A_Usu_Id').Value;
                          nom:= ADOquery.FieldByName('A_Usu_nombre').Value;    
                          pass:= ADOquery.FieldByName('A_Usu_Pass').Value;
                          mail:= ADOquery.FieldByName('A_Usu_Email').Value;
                          perfil:= ADOquery.FieldByName('A_Usu_perfil').Value;
                          usu:= ADOquery.FieldByName('A_Usu_Usuario').Value;
                          terminal:= ADOquery.FieldByName('A_Usu_Terminal').Value;
                          accion:= ADOquery.FieldByName('A_Usu_Accion').Value;

                                XlsWriteCellLabel(FStream, 1, j, id);
                                XlsWriteCellLabel(FStream, 2, j, nom);
                                XlsWriteCellLabel(FStream, 3, j, pass);
                                XlsWriteCellLabel(FStream, 4, j, mail);
                                XlsWriteCellLabel(FStream, 5, j, perfil);
                                XlsWriteCellLabel(FStream, 6, j, usu);
                                XlsWriteCellLabel(FStream, 7, j,  ADOquery.FieldByName('A_Usu_fecha').Value);
                                XlsWriteCellLabel(FStream, 8, j, terminal);
                                XlsWriteCellLabel(FStream, 9, j, accion);


                        j:= j+1;

                        ADOQuery.Next;
                      end;
               end;
               XlsEndStream(FStream);
               FStream.Free;
            end
          else
            if SaveDialog1.FilterIndex = 2
              then
                begin
                  aa := SaveDialog1.FileName +'.pdf' ;
                  RvSystem1.DefaultDest:= rdFile;
                  RvSystem1.DoNativeOutput:= false;
                  RvSystem1.RenderObject:= rvRenderPDF2;
                  RvSystem1.OutputFileName:= aa;
                  RvSystem1.SystemSetups:= RvSystem1.SystemSetups -[ssAllowSetup];
                  Rvproject6.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Usuarios.rav';
                  RvProject6.Engine:= RvSystem1;
                  rvproject6.Execute;
                end;
     end;
end;

procedure TForm2.ts1Show(Sender: TObject);
var
  permi: integer;
begin
permi:= Pantalla_Inicio.permiso;

case permi of

  1: begin
      ts1.Visible:= false;
     end;

  2: begin
      ts1.Visible:= false;
     end;

  3: begin
      ts1.Visible:= false;
     end;

  4: begin
      ts1.Visible:= false;
     end;
end;

lbl5.Caption:= '------------------------------';
lbl5.Color:= clBtnFace;
cbb2.Clear;
cbb2.Items.Assign(RPDevice.TRPPrinterDevice.Create.Printers);
cbb2.ItemIndex:= 0;
end;

procedure TForm2.btn12Click(Sender: TObject);
var
nombre: string;
begin
nombre:= cbb2.Text;
RPDev.SelectPrinter(nombre, false);
lbl5.Caption:= 'Selecciono la impresora:  '+nombre;
lbl5.Color:= clGreen;
end;

procedure TForm2.btn10Click(Sender: TObject);
var
conexion: integer;
nombre: string;
encon: Boolean;

aa : string ;
FStream: TFileStream;

begin
  encon:= false;
        qry1.SQL.Text:='SP_WHO';
        qry1.Open;
        qry1.First;
        While not (qry1.Eof) do
        begin
          nombre:= qry1.FieldByName('dbname').AsString;
          if (Seleccion_Empresa.tipoempresa = nombre)
            then
              begin
                conexion:= qry1.FieldByName('spid').AsInteger;
                //showmessage(inttostr(conexion));
                qry1.SQL.Text:= 'Kill '+inttostr(conexion);
                //ShowMessage('inserto');
                qry1.ExecSQL;
                //ShowMessage('paso');
                encon:= true;
              end;
          if not encon         
            then
              qry1.Next;
        end;

          dlgOpen1.Filter := '.bak|*.bak';
            if not dlgOpen1.Execute
              then
                begin
                  exit ;
                end
              else
                begin
                  aa := dlgOpen1.FileName;
                end;  //Da la ruta del archivo

                                        

        try
          qry1.SQL.Clear;
          qry1.SQL.Add('RESTORE DATABASE Gestion_Documentos FROM DISK = '+#39+aa+#39+' WITH REPLACE');
          qry1.ExecSQL;

           if Application.MessageBox('La base de datos, ha sido regenerada. Porfavor, cierre el programa y vuelva abrirlo.','Atención',
              mb_IconQuestion)= idOk
               then
                begin
                  Pantalla_Programa.Form2.ADOConnection1.Close;
                  Pantalla_Programa.Form2.ADOConnection2.Close;
                  Pantalla_programa.Form2.ADOConnection1.ConnectionString:= enlace;
                  Pantalla_programa.Form2.ADOConnection2.ConnectionString:= enlace;
                  Libreria_programa.CargarAuditoriaDatos(Pantalla_inicio.nombre,Libreria_programa.GetPCName,'RESTAURACIÓN - Generada');
                  application.Terminate;
                end;
        except                        
          on E: Exception do
            begin
             if e.ClassName = 'EOleException'
              then
                begin
                if Application.MessageBox('El archivo seleccionado no pertenece a la Empresa.','Atención, se cerrara el programa',
                    mb_IconQuestion)= idOk
                     then
                    application.Terminate;
                 end  
              else
                if Application.MessageBox('Error de base de datos. El archivo no pertenece a una base de datos.','Atención, se cerrara el programa',
                  mb_IconQuestion)= idOk
                   then
                  application.Terminate;
            end
        end;

end;

procedure TForm2.btn2Click(Sender: TObject);
var
  aa : string ;
  FStream: TFileStream;
  j: integer;
  Nombre: string;
  accion, terminal: string;
  num: integer;
begin
if  not (Pantalla_inicio.permiso = 4) and not (Pantalla_inicio.permiso = 5)
  then
    showmessage('No tiene acceso a esta accion')
  else
  begin
        SaveDialog1.FileName :=
           'Auditoria Buckups' ;
        saveDialog1.Filter := 'Excel|*.xls|PDF|*.pdf';

        if not SaveDialog1.Execute
        then
          begin
            exit ;
          end
        else
        if SaveDialog1.FilterIndex = 1
          then
            begin
               begin
                aa := SaveDialog1.FileName +'.xls' ;
                FStream := TFileStream.Create( aa, fmCreate);
                XlsBeginStream(FStream, 0);

                // Crear las cabeceras de las columnas
                    XlsWriteCellLabel(FStream, 1, 1, ' Auditoria De ');
                    XlsWriteCellLabel(FStream, 2, 1, ' Buckups ');
                    //
                    XlsWriteCellLabel(FStream, 1, 2, ' Fecha ');
                    XlsWriteCellLabel(FStream, 2, 2, label7.Caption );
                    XlsWriteCellLabel(FStream, 3, 2, ' Hora ');
                    XlsWriteCellLabel(FStream, 4, 2, label43.Caption );

                    //
                    XlsWriteCellLabel(FStream, 1, 4, ' Usuario ');
                    XlsWriteCellLabel(FStream, 2, 4, ' Fecha ');
                    XlsWriteCellLabel(FStream, 3, 4, ' Terminal ');
                    XlsWriteCellLabel(FStream, 4, 4, ' Accion ');
                    //
                    j:= 5;

                      ADOQUery.SQL.Text:= ('Select * from Auditoria_Datos ORDER BY A_dat_Fecha');
                      ADOQuery.Open;
                      ADOQuery.First;

                      While not (ADOQuery.Eof) do
                      begin
                        XlsWriteCellLabel(FStream, 1, j, ADOQuery.FieldByName('A_dat_usuario').Value);
                        XlsWriteCellLabel(FStream, 2, j, ADOQuery.FieldByName('A_dat_Fecha').Value);
                        XlsWriteCellLabel(FStream, 3, j, ADOQuery.FieldByName('A_dat_terminal').Value);
                        XlsWriteCellLabel(FStream, 4, j, ADOQuery.FieldByName('A_dat_accion').Value);

                        j:= j+1;

                        ADOQuery.Next;
                      end;
               end;
               XlsEndStream(FStream);
               FStream.Free;
            end
          else
            if SaveDialog1.FilterIndex = 2
              then
                begin
                  aa := SaveDialog1.FileName +'.pdf' ;
                  RvSystem1.DefaultDest:= rdFile;
                  RvSystem1.DoNativeOutput:= false;
                  RvSystem1.RenderObject:= rvRenderPDF2;
                  RvSystem1.OutputFileName:= aa;
                  RvSystem1.SystemSetups:= RvSystem1.SystemSetups -[ssAllowSetup];
                  Rvproject7.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Buckup.rav';
                  RvProject7.Engine:= RvSystem1;
                  rvproject7.Execute;
                end;


     end;



end;

procedure TForm2.btn11Click(Sender: TObject);
begin
Form4.Show;
Form4.btn1.Visible:= false;
Form4.btn3.Visible:= False;
Form4.btn4.Visible:= False;
Form4.btn5.Visible:= True;
end;

procedure TForm2.ts2Show(Sender: TObject);
var
  permi: integer;
begin
permi:= Pantalla_Inicio.permiso;

case permi of            

  1: begin
      ts2.Visible:= false;
     end;

  2: begin
      ts2.Visible:= false;
     end;

  3: begin
      ts2.Visible:= false;
     end;

  5: begin
      ts2.Visible:= false;
     end;
  end;
end;

procedure TForm2.btn13Click(Sender: TObject);
begin
Form11.Show;
form2.Hide;
end;


procedure TForm2.btn14Click(Sender: TObject);
begin
form10.show;
form2.Hide;
end;



procedure TForm2.btn15Click(Sender: TObject);
begin
form14.show;
form2.Hide;
end;

procedure TForm2.btn16Click(Sender: TObject);
begin
form15.show;
form2.Hide;
end;

end.




