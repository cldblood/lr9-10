program zad2_9;
const N = 10;

type
  tarr = array[1..N] of integer;
  
var i: integer;
    arr1: tarr;

  procedure max_el(arr: tarr);
    var max, i, index, min, index1: integer;

  begin
    max:= -10;
    min:= 10;
    index:= 0;
    index1:= 0;
    
    for i:= 1 to N do
      begin
      if (arr[i] > max) and (arr[i] < 0) and (arr[i] <> 0) then 
        begin
        max:= arr[i];
        index:= i;
        end; 
        
      if abs(arr[i]) < min then
        begin
        min:= abs(arr[i]);
        index1:= i;
        end;
      end;
      
    writeln('Максимальный отрицательный элемент массива = ', max, ' и его индекс = ', index);
    writeln('Минимальный по модулю элемент массива = ', min, ' и его индекс = ', index1);
  end;
    
  
BEGIN
  write('Массив = ');
  for i:= 1 to N do
    begin
    arr1[i]:= random(-10, 10);
    write(arr1[i], '[', i, ']', '  ');
    end;
    
  writeln;
  writeln;
  
  max_el(arr1);
END.