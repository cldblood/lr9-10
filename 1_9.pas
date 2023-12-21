program zad1_9;
const N = 10;

type 
  tarr = array [1..N] of integer;

var a, b, i: integer;
    arr1: tarr;
  
  
  procedure sum_el(arr: tarr);
    var sum, i: integer;
  
  begin
  for i:= 1 to N do
    begin
    if arr[i] mod 2 = 0 then
    sum:= sum + arr[i];
    end;
  write('Сумма элементов данного массива равна = ', sum);
  end;


BEGIN
  for i:= 1 to N do
    arr1[i]:= random(10);
  write('Массив = ', arr1);
  writeln;
  
  sum_el(arr1);
END.
