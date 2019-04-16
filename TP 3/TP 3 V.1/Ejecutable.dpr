program Ejecutable;

uses
  Forms,
  Pantalla_inicio in '..\..\Proyecto 4\TP 3\TP 3 V.1\Pantalla_inicio.pas' {Form1},
  Pantalla_programa in 'Pantalla_programa.pas' {Form2},
  Libreria_programa in '..\..\Proyecto 4\TP 3\TP 3 V.1\Libreria_programa.pas',
  Libreria_Validaciones in '..\..\Proyecto 4\TP 3\TP 3 V.1\Libreria_Validaciones.pas',
  Pantalla_Documentos in '..\..\Proyecto 4\TP 3\TP 3 V.1\Pantalla_Documentos.pas' {Form3},
  Unit4 in '..\..\Proyecto 4\TP 3\TP 3 V.1\Unit4.pas' {Form4},
  Unit8 in '..\..\Proyecto 4\TP 3\TP 3 V.1\Unit8.pas' {Form7},
  Seleccion_Empresa in '..\..\Proyecto 4\TP 3\TP 3 V.1\Seleccion_Empresa.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form10},
  Unit9 in 'Unit9.pas' {form11},
  Unit12 in 'Unit12.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(Tform11, form11);
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
