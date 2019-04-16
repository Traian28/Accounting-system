unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Menus;

type
  Tform11 = class(TForm)
    TStringGrid: TStringGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    Salir1: TMenuItem;
    VolverMenuAnt1: TMenuItem;
    PlanDeCuenta1: TMenuItem;
    CrearCuenta1: TMenuItem;
    ModificarCuenta1: TMenuItem;
    ListadoPlandeCuentas1: TMenuItem;
    IngresodeAsientos1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure VolverMenuAnt1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure CrearCuenta1Click(Sender: TObject);
    procedure IngresodeAsientos1Click(Sender: TObject);
    procedure ModificarCuenta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form11: Tform11;

implementation

uses
  Pantalla_programa, Unit12, Unit6;

{$R *.dfm}


procedure Tform11.FormShow(Sender: TObject);
var
  num: integer;
begin
  num:= 0;


Pantalla_programa.Form2.ADOQuery.SQL.Text:=('Select * from Plan_Cuenta ORDER BY Codigo_Cuenta');
Pantalla_programa.Form2.ADOQuery.Open;

      While not (Pantalla_programa.Form2.ADOQuery.Eof) do
      begin
      TStringGrid.Cells[0, num]:= Pantalla_programa.Form2.ADOQuery.FieldByName('Codigo_Cuenta').Value;
      TStringGrid.Cells[1, num]:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nombre_Cuenta').Value;
      TStringGrid.Cells[2, num]:= Pantalla_programa.Form2.ADOQuery.FieldByName('Tipo_Cuenta').Value;
      TStringGrid.Cells[3, num]:= Pantalla_programa.Form2.ADOQuery.FieldByName('Nivel_Cuenta').Value;

      num:= num+1;
      Pantalla_programa.Form2.ADOQuery.Next;
      end;

end;

procedure Tform11.VolverMenuAnt1Click(Sender: TObject);
begin
        Form2.show;                
        Pantalla_programa.Form2.ts3.Show;
        Form11.Hide;
end;

procedure Tform11.Salir1Click(Sender: TObject);
begin
 if Application.MessageBox('Abandonara la sesion ¿Esta seguro?','Atención',mb_OkCancel +
  mb_IconQuestion)= idOk
   then
  application.Terminate;
end;

procedure Tform11.CrearCuenta1Click(Sender: TObject);
begin
form12.Show;
form12.Crear_Cuenta.Visible:= true;
Form12.Modificar_Cuenta.Visible:= false;
form11.Hide;
end;

procedure Tform11.IngresodeAsientos1Click(Sender: TObject);
begin
form10.show;
form11.Hide;
end;


procedure Tform11.ModificarCuenta1Click(Sender: TObject);
begin
form12.Show;
form12.Crear_Cuenta.Visible:= false;
Form12.Modificar_Cuenta.Visible:= true;
form11.Hide;
end;

end.
