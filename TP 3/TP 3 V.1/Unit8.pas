unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Pantalla_programa, Buttons, ExtCtrls, Hoja_Calculo, pantalla_inicio,
  RpCon, RpConDS, RpDefine, RpRave, RpRender, RpRenderPDF, RpBase, RpSystem,
  RpRenderText;

type
  TForm7 = class(TForm)
    TStringGrid: TStringGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn1: TBitBtn;
    btn3: TBitBtn;
    lbl8: TLabel;
    lbl9: TLabel;
    btn6: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
var
permi: integer;
Nombre,Apellido: string;
nro,tipod,venta: integer;
desc,desc2: string;
num: integer;

begin

//
num:= 0;

      Pantalla_programa.Form2.ADOquery.SQL.Text:= ('Select * from Personas ORDER BY P_Tipodoc');
      Pantalla_programa.Form2.ADOquery.Open;
      Pantalla_programa.Form2.ADOquery.First;

        While not (Pantalla_programa.Form2.ADOquery.Eof) do
          begin
            Nombre:= Pantalla_programa.Form2.ADOquery.FieldByName('P_Nombre').Value;
            Apellido:= Pantalla_programa.Form2.ADOquery.FieldByName('P_Apellido').Value;
            nro:= Pantalla_programa.Form2.ADOquery.FieldByName('P_Nrodoc').Value;
            tipod:= Pantalla_programa.Form2.ADOquery.FieldByName('P_Tipodoc').Value;
            venta:= Pantalla_programa.Form2.ADOquery.FieldByName('cod_zona').Value;
            Pantalla_programa.Form2.ADOquery1.SQL.Text:= ('Select * from tipodocumento where TP_Clave='+inttostr(tipod));
            Pantalla_programa.Form2.ADOquery1.Open;
            Pantalla_programa.Form2.ADOquery1.First;
            desc:= Pantalla_programa.Form2.ADOquery1.FieldByName('TP_Sigla').Value;
            tstringgrid.Cells [0,num]:= nombre;
            tstringgrid.Cells [1,num]:= apellido;
            tstringgrid.Cells [2,num]:= inttostr(nro);
            tstringgrid.Cells [3,num]:= inttostr(tipod);
            tstringgrid.Cells [4,num]:= desc;
            Pantalla_programa.Form2.ADOquery1.SQL.Text:= ('Select * from Zonas_Ventas where ZC_Clave='+inttostr(venta));
            Pantalla_programa.Form2.ADOquery1.Open;
            Pantalla_programa.Form2.ADOquery1.First;
            desc2:= Pantalla_programa.Form2.ADOquery1.FieldByName('ZC_Descripcion').Value;
            tstringgrid.Cells [5,num]:= desc2;

            Pantalla_programa.Form2.ADOquery.Next;
             num:= num+1;

          end;

end;

procedure TForm7.btn1Click(Sender: TObject);
begin
form2.Show;
Form7.Hide;
end;

procedure TForm7.btn3Click(Sender: TObject);
var
  aa : string ;
  FStream: TFileStream;
  j: integer;
  Nombre,Apellido: string;
  nro,tipod,venta: integer;
  desc,desc2: string;
  num: integer;
begin
if (Pantalla_inicio.permiso = 1)
  then
    showmessage('No tiene acceso a esta accion')
  else
  begin
        Pantalla_programa.Form2.SaveDialog1.FileName :=
           'Listado de Personal' ;
        Pantalla_programa.Form2.SaveDialog1.Filter := 'Excel|*.xls|PDF|*.pdf';

        if not Pantalla_programa.Form2.SaveDialog1.Execute
        then
          begin
            exit ;
          end
        else
        if Pantalla_programa.Form2.SaveDialog1.FilterIndex = 1
          then
            begin
               begin
                aa := Pantalla_programa.Form2.SaveDialog1.FileName +'.xls' ;
                FStream := TFileStream.Create( aa, fmCreate);
                XlsBeginStream(FStream, 0);

                // Crear las cabeceras de las columnas
                    XlsWriteCellLabel(FStream, 1, 1, ' Listado de ');
                    XlsWriteCellLabel(FStream, 2, 1, ' Personas ');
                    //
                    XlsWriteCellLabel(FStream, 1, 2, ' Fecha ');
                    XlsWriteCellLabel(FStream, 2, 2, Pantalla_programa.Form2.label7.Caption );
                    XlsWriteCellLabel(FStream, 3, 2, ' Hora ');
                    XlsWriteCellLabel(FStream, 4, 2, Pantalla_programa.Form2.label43.Caption );
                    //
                    XlsWriteCellLabel(FStream, 1, 4, ' Nombre ');
                    XlsWriteCellLabel(FStream, 2, 4, ' Apellido ');
                    XlsWriteCellLabel(FStream, 3, 4, ' Documento ');
                    XlsWriteCellLabel(FStream, 4, 4, ' Tipo Doc. ');
                    XlsWriteCellLabel(FStream, 5, 4, ' Descripcion ');
                    XlsWriteCellLabel(FStream, 6, 4, ' Zona ');

                    j:= 5;

                      Pantalla_programa.Form2.ADOQUery.SQL.Text:= ('Select * from Personas ORDER BY P_Tipodoc');
                      Pantalla_programa.Form2.ADOQuery.Open;
                      Pantalla_programa.Form2.ADOQuery.First;             


                      While not (Pantalla_programa.Form2.ADOQuery.Eof) do
                      begin
                        Nombre:= Pantalla_programa.Form2.ADOQuery.FieldByName('P_Nombre').Value;
                        Apellido:= Pantalla_programa.Form2.ADOQuery.FieldByName('P_Apellido').Value;
                        nro:= Pantalla_programa.Form2.ADOQuery.FieldByName('P_Nrodoc').Value;
                        tipod:= Pantalla_programa.Form2.ADOQuery.FieldByName('P_Tipodoc').Value;
                        venta:= Pantalla_programa.Form2.ADOQuery.FieldByName('cod_zona').Value;
                        Pantalla_programa.Form2.ADOQuery1.SQL.Text:= ('Select * from tipodocumento where TP_Clave='+inttostr(tipod));
                        Pantalla_programa.Form2.ADOQuery1.Open;
                        Pantalla_programa.Form2.ADOQuery1.First;
                        desc:= Pantalla_programa.Form2.ADOQuery1.FieldByName('TP_Sigla').Value;
                        Pantalla_programa.Form2.ADOQuery1.SQL.Text:= ('Select * from Zonas_Ventas where ZC_Clave='+inttostr(venta));
                        Pantalla_programa.Form2.ADOQuery1.Open;
                        Pantalla_programa.Form2.ADOQuery1.First;
                        desc2:= Pantalla_programa.Form2.ADOQuery1.FieldByName('ZC_Descripcion').Value;

                                XlsWriteCellLabel(FStream, 1, j, nombre);
                                XlsWriteCellLabel(FStream, 2, j, apellido);
                                XlsWriteCellLabel(FStream, 3, j, inttostr(nro));
                                XlsWriteCellLabel(FStream, 4, j, inttostr(tipod));
                                XlsWriteCellLabel(FStream, 5, j, desc);
                                XlsWriteCellLabel(FStream, 6, j, desc2);


                        j:= j+1;

                        Pantalla_programa.Form2.ADOQuery.Next;
                      end;
               end;
               XlsEndStream(FStream);
               FStream.Free;
            end
          else                               
            if Pantalla_programa.Form2.SaveDialog1.FilterIndex = 2
              then
                begin
                  aa := Pantalla_programa.Form2.SaveDialog1.FileName +'.pdf' ;
                  Pantalla_programa.Form2.RvSystem1.DefaultDest:= rdFile;
                  Pantalla_programa.Form2.RvSystem1.DoNativeOutput:= false;
                  Pantalla_programa.Form2.RvSystem1.RenderObject:= Pantalla_programa.Form2.rvRenderPDF2;
                  Pantalla_programa.Form2.RvSystem1.OutputFileName:= aa;
                  Pantalla_programa.Form2.RvSystem1.SystemSetups:= Pantalla_programa.Form2.RvSystem1.SystemSetups -[ssAllowSetup];
                  Pantalla_programa.Form2.Rvproject1.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Listado_Personas.rav';
                  Pantalla_programa.Form2.RvProject1.Engine:= Pantalla_programa.Form2.RvSystem1;
                  Pantalla_programa.Form2.rvproject1.Execute;
                end;
     end;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
if  (Pantalla_inicio.permiso = 1)
  then
    showmessage('No tiene acceso a esta accion')
  else
    begin
        with Pantalla_programa.Form2.QueryPersona do
        begin
          close;
            SQL.Clear;
              SQL.Text:=('Select * from Personas ORDER BY P_Tipodoc');
              Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject2.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Listado_Personas.rav';
            Pantalla_Programa.Form2.RvProject2.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject2.Execute;

            //Pantalla_programa.Form2.RvProject2.Execute ;
            //Pantalla_programa.Form2.RvProject2.Save;
        end;
    end;
end;

end.
