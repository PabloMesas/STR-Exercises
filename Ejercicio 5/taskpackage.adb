--------------------------------------------
-----   Pablo Mesas Lafarga STR 2018   -----
--------------------------------------------

with Kernel.Serial_Output; use Kernel.Serial_Output;

package body taskpackage is

--------------------------------------------
-----            Variables             -----
--------------------------------------------
subtype tamano is integer range 1..50;
type Array_50 is array (tamano) of integer;

matriz : Array_50 := (7,69,5,2,31,5,6,28,9,7,34,1,2,3,25,6,9,11,7,5,4,32,21,97,5,26,8,9,17,5,4,22,1,33,5,64,9,8,47,5,4,12,3,25,16,9,8,7,19,8);

--------------------------------------------
-----     Funciones/Procedimientos     -----
--------------------------------------------

procedure mostrar_matriz is
  mayor : integer := 0;
begin
  Put_Line  ("-- Este Procedure Muestra la matriz");
  for i in tamano loop
    put(Integer'Image(matriz(i)));
    end loop;
end mostrar_matriz;

procedure ordenar is
  mayor : integer := 0;
begin
  Put_Line  ("-- Este Procedure Ordena");
  for i in tamano loop
    for j in integer range 1..49 loop
      if matriz(j) > matriz(j+1) then
        mayor := matriz(j);
        matriz(j) := matriz(j+1);
        matriz(j+1) := mayor;
        end if;
      end loop;
    end loop;
end ordenar;

function sumar return integer is
  suma : integer := 0;
begin
  Put_Line  ("-- Esta Function Suma");
  for i in tamano loop
    suma := suma + matriz(i);
    end loop;
  return suma;
end sumar;

function mayor_valor return integer is
  mayor : integer := 0;
begin
  Put_Line  ("-- Esta Function saca el Mayor");
  for i in tamano loop
    if mayor < matriz(i) then
      mayor := matriz(i);
      end if;
    end loop;
  return mayor;
end mayor_valor;

--------------------------------------------
-----            Tareas                -----
--------------------------------------------

task body TA is
begin
mostrar_matriz;
ordenar;
end TA;

task body TB is
k: integer;
begin
k:=sumar;
put(Integer'Image(k));
end TB;

task body TC is
k: integer;
begin
k:=mayor_valor;
put(Integer'Image(k));
end TC;


begin
   Put_Line  ("-- Parte principal del paquete de tareas");
   mostrar_matriz;

end taskpackage;
