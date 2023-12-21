program zad3_9;
const N = 10;

type
  tarr = array[1..N] of integer;
  
var i, a, b: integer;
    arr1: tarr;
    
  function plus_el(arr: tarr): integer;
  var i, index: integer;
  
  begin
    for i:= 1 to N do
      if arr[i] > 0 then
        begin
        index:= i;
        break
        end;
    plus_el := index;
  end;
  
  
  function negativ_el(arr: tarr): integer;
  var i, index: integer;
  
  begin
    for i:= 1 to N do
      if arr[i] < 0 then begin index:= i end
      else begin index:= 0 end;
    negativ_el := index;
  end;
  
  
begin
  write('Массив = ');
  for i:= 1 to N do
    begin
    arr1[i]:= random(-10, 2);
    write(arr1[i], '[', i, ']', '  ');
    end;
    
  writeln;
  writeln;
  
  a := plus_el(arr1);
  b := negativ_el(arr1);
  writeln('Индекс первого положительного элемента = ', a);
  writeln('Индекс последнего отрицательного элемента = ', b);
end.