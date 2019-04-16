unit Pantalla_Aud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids;

type
  TPantalla_Auditoria = class(TForm)
    Label1: TLabel;
    btn1: TBitBtn;
    grp1: TGroupBox;
    TStringGrid: TStringGrid;
    lbl11: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    grp2: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    TStringGrid41: TStringGrid;
    grp3: TGroupBox;
    TStringGrid42: TStringGrid;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pantalla_Auditoria: TPantalla_Auditoria;

implementation

uses Pantalla_programa;

{$R *.dfm}

procedure TPantalla_Auditoria.btn1Click(Sender: TObject);
begin
  grp1.Visible:= true;
  grp2.Visible:= true;
form2.show;
Pantalla_Auditoria.Hide;
end;

procedure TPantalla_Auditoria.FormShow(Sender: TObject);
var
nro,num,tipo,cod: integer;                              //
nom,ape,edad,sexo,usuario,terminal,accion: string;      //  Para las personas

num2,num3: integer;


begin
  num:= 0;
  num2:= 0;
  num3:= 0;
      // AUDITORIA PARA PERSONAL
      Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Auditoria ORDER by A_Fecha');
      Pantalla_programa.Form2.ADOQuery.Open;
      Pantalla_programa.Form2.ADOQuery.First;

      While not (Pantalla_programa.Form2.ADOQuery.Eof) do
          begin
            nro:= Pantalla_programa.Form2.ADOQuery.FieldByName('nro_doc').Value;
            tipo:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Tipodoc').Value;
            nom:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Nombre').Value;
            ape:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Apellido').Value;
            edad:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Edad').Value;
            sexo:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Sexo').Value;
            cod:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Prov').Value;
            usuario:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usuario').Value;
            terminal:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Terminal').Value;
            accion:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Accion').Value;
            //
            TStringGrid.Cells [0,num]:= inttostr(nro);
            TStringGrid.Cells [1,num]:= inttostr(tipo);
            TStringGrid.Cells [2,num]:= nom;
           TStringGrid.Cells [3,num]:= ape;
            TStringGrid.Cells [4,num]:= edad;
            TStringGrid.Cells [5,num]:= sexo;
            TStringGrid.Cells [6,num]:= IntToStr(cod);
            TStringGrid.Cells [7,num]:= usuario;
           TStringGrid.Cells [8,num]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_fecha').Value;
            TStringGrid.Cells [9,num]:= terminal;
            TStringGrid.Cells [10,num]:= accion;
            //
            num:=num+1;
            Pantalla_programa.Form2.ADOQuery.Next;
          end;

     // AUDITORIA PARA DOCUMENTACION
      Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Auditoria_Doc ORDER BY A_Doc_Fecha');
      Pantalla_programa.Form2.ADOQuery.Open;
      Pantalla_programa.Form2.ADOQuery.First;
      While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
            TStringGrid41.Cells [0,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_Clave').Value;
            TStringGrid41.Cells [1,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_Descripcion').Value;
            TStringGrid41.Cells [2,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_sigla').Value;
            TStringGrid41.Cells [3,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_Usuario').Value;
            TStringGrid41.Cells [4,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_Fecha').Value;
            TStringGrid41.Cells [5,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_Terminal').Value;
            TStringGrid41.Cells [6,num2]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Doc_Accion').Value;

            num2:=num2+1;
            Pantalla_programa.Form2.ADOQuery.Next;
      end;


      // AUDITORIA PARA LOS USUARIOS
      Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Auditoria_Usuario ORDER BY A_Usu_Fecha');
      Pantalla_programa.Form2.ADOQuery.Open;
      Pantalla_programa.Form2.ADOQuery.First;
           While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
            TStringGrid42.Cells [0,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Id').Value;
            TStringGrid42.Cells [1,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Nombre').Value;
            TStringGrid42.Cells [2,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Pass').Value;
            TStringGrid42.Cells [3,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Email').Value;

            //Pantalla_programa.Form2.ADOQuery1.SQL.Text:= ('Select * from Perfiles where P_Clave='+inttostr(tipo));
            //Pantalla_programa.Form2.ADOQuery1.Open;          Comparatiba para poner
            //Pantalla_programa.Form2.ADOQuery1.First;          desc. del perfil
            //permiso:= Pantalla_programa.Form2.ADOquery1.FieldByName('P_Descripcion').Value;

            TStringGrid42.Cells [4,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Perfil').Value;
            TStringGrid42.Cells [5,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Usuario').Value;
            TStringGrid42.Cells [6,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Fecha').Value;
            TStringGrid42.Cells [7,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Terminal').Value;
            TStringGrid42.Cells [8,num3]:= Pantalla_programa.Form2.ADOQuery.FieldByName('A_Usu_Accion').Value;

            num3:=num3+1;
            Pantalla_programa.Form2.ADOQuery.Next;
      end;

end;

end.
