--------------------------------------------
-----   Pablo Mesas Lafarga STR 2018   -----
--------------------------------------------

package taskpackage is

--type Array_50 is array (integer range 1..50) of integer;

--procedure ordenar (tabla: in Array_50);
--function sumar (tabla: in Array_50) return integer;
--function mayor (tabla: in Array_50) return integer;

procedure mostrar_matriz ;
procedure ordenar ;
function sumar return integer;
function mayor_valor return integer;


task TA ;
task TB ;
task TC ;

end taskpackage;
