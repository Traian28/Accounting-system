unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Pantalla_Programa, RpCon, RpConDS, RpDefine, RpRave, RpRender, RpRenderPDF, RpBase, RpSystem,
  RpRenderText, RPDevice;

type
  TForm4 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt2: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    lbl6: TLabel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);                
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  fechad, fechah: string;

implementation

{$R *.dfm}



procedure TForm4.btn2Click(Sender: TObject);
begin
Form4.Hide;
form2.Show;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
fechad:=edt1.Text;
fechah:=edt2.Text;

if not (Unit4.fechad = '') and not (Unit4.fechah = '')
  then
    begin
      with Pantalla_Programa.Form2.qryQueryAuditoria do
      begin
        close;
          SQL.Clear;
            SQL.Text:='SELECT * From Auditoria WHERE A_Fecha BETWEEN '+#39+unit4.fechad+#39+'AND'+#39+unit4.fechah+#39+' ORDER BY A_Fecha,A_Accion';
            Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject4.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Personas.rav';
            Pantalla_Programa.Form2.RvProject4.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject4.Execute;

          Pantalla_Programa.Form2.RvProject4.Execute
      end;
    end
  else
    begin
          with Pantalla_Programa.Form2.qryQueryAuditoria do
      begin
        close;
          SQL.Clear;
            SQL.Text:='SELECT * From Auditoria ORDER BY A_Fecha';
            Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject4.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Personas.rav';
            Pantalla_Programa.Form2.RvProject4.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject4.Execute;

          //Pantalla_Programa.Form2.RvProject4.Execute
      end;
    end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
fechad:=edt1.Text;
fechah:=edt2.Text;
if not (Unit4.fechad = '') and not (Unit4.fechah = '')
  then
    begin
        with Pantalla_Programa.Form2.qryQueryAudDoc do
        begin
          close;
            SQL.Clear;
              SQL.Text:='SELECT * From Auditoria_Doc WHERE A_Doc_Fecha BETWEEN'+#39+unit4.fechad+#39+'AND'+#39+unit4.fechah+#39+' ORDER BY A_Doc_Fecha,A_doc_Accion';
              Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject5.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Documentos.rav';
            Pantalla_Programa.Form2.RvProject5.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject5.Execute;
                 
            //Pantalla_Programa.Form2.RvProject5.Execute
        end;
    end
  else
   begin
           with Pantalla_Programa.Form2.qryQueryAudDoc do
        begin
          close;
            SQL.Clear;
              SQL.Text:='SELECT * From Auditoria_Doc ORDER BY A_Doc_Fecha';
              Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject5.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Documentos.rav';
            Pantalla_Programa.Form2.RvProject5.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject5.Execute;

            //Pantalla_Programa.Form2.RvProject5.Execute
        end;
   end;

end;

procedure TForm4.btn4Click(Sender: TObject);
begin
fechad:=edt1.Text;
fechah:=edt2.Text;
if not (Unit4.fechad = '') and not (Unit4.fechah = '')
  then
    begin
      with Pantalla_Programa.Form2.qryQueryAudUsu do
        begin
          close;
            SQL.Clear;
              SQL.Text:='SELECT * From Auditoria_Usuario WHERE A_Usu_Fecha BETWEEN'+#39+unit4.fechad+#39+'AND'+#39+unit4.fechah+#39+' ORDER BY A_Usu_Fecha,A_Usu_ID,A_Usu_Accion';
              Open;
              begin
                 Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
                 Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
                 Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
                 Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
                 Pantalla_Programa.Form2.Rvproject6.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Usuarios.rav';
                 Pantalla_Programa.Form2.RvProject6.Engine:= Pantalla_Programa.Form2.RvSystem1;
                 Pantalla_Programa.Form2.rvproject6.Execute;
                 //Pantalla_Programa.Form2.RvProject6.Execute;
              end
        end;
    end
  else
  begin
      with Pantalla_Programa.Form2.qryQueryAudUsu do
      begin
        close;
          SQL.Clear;
            SQL.Text:='SELECT * From Auditoria_Usuario order by A_Usu_Fecha';
            Open;
            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject6.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_Usuarios.rav';
            Pantalla_Programa.Form2.RvProject6.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject6.Execute;
          //Pantalla_Programa.Form2.RvProject6.Execute
      end;
  end;

end;

procedure TForm4.btn5Click(Sender: TObject);
begin
fechad:=edt1.Text;
fechah:=edt2.Text;
if not (Unit4.fechad = '') and not (Unit4.fechah = '')
  then
    begin
        with Pantalla_Programa.Form2.qrybuckup do
        begin
          close;
            SQL.Clear;
              SQL.Text:='SELECT * From Auditoria_Datos WHERE A_Dat_Fecha BETWEEN'+#39+unit4.fechad+#39+'AND'+#39+unit4.fechah+#39+' ORDER BY A_Dat_Fecha';
              Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject7.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_buckup.rav';
            Pantalla_Programa.Form2.RvProject7.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject7.Execute;
                 
            //Pantalla_Programa.Form2.RvProject5.Execute
        end;
    end
  else
   begin
           with Pantalla_Programa.Form2.qrybuckup do
        begin
          close;
            SQL.Clear;
              SQL.Text:='SELECT * From Auditoria_Datos ORDER BY A_dat_Fecha';
              Open;

            Pantalla_Programa.Form2.RvSystem1.DefaultDest    := rdPreview;
            Pantalla_Programa.Form2.RvSystem1.DoNativeOutput := false;
            Pantalla_Programa.Form2.RvSystem1.RenderObject   := Pantalla_Programa.Form2.RenderPreview1;
            Pantalla_Programa.Form2.RvSystem1.SystemSetups   := Pantalla_Programa.Form2.RvSystem1.SystemSetups - [ssAllowSetup];
            Pantalla_Programa.Form2.Rvproject7.projectfile:= 'C:\Users\GoodLuck\Desktop\TP 3\TP 3 V.1\Reportes\Auditoria_buckup.rav';
            Pantalla_Programa.Form2.RvProject7.Engine:= Pantalla_Programa.Form2.RvSystem1;
            Pantalla_Programa.Form2.rvproject7.Execute;

            //Pantalla_Programa.Form2.RvProject5.Execute
        end;
   end;

end;

end.
