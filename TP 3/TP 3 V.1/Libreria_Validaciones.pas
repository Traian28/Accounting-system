unit Libreria_Validaciones;

interface

function Esletra(A: char): boolean;
function EsNumero(A: char): boolean;

implementation

function Esletra(A: char): boolean;
begin

  if (A <#65) or (A >#90) 
        then
          Esletra:= false
        else
          Esletra:= true;
end;

function EsNumero(A: char): boolean;
begin
  if (A <#48) or (A >#57)
        then
          EsNumero:= false
        else
          EsNumero:= true;
end;

end.
