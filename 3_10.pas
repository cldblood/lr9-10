program zad3_10;

const
  N = 8;
  
type
  matrix = array [1..N, 1..N] of integer;
  
var
  arr: array[1..N] of integer;
  i, j: integer;
  A: matrix;
  
  
BEGIN
  // формирование массива 8*8
  writeln(' -  -  Двумерный массив: ');
  for i:= 1 to N do
    begin
    for j:= 1 to N do
      begin
      A[i, j]:= random(7);
      write(A[i, j]:3);
      end;
    writeln;
    end;
    
    
  // заполнение массива -1
  for i:= 1 to N do
    arr[i]:= -1;
    
    
  // заполнение одномерного массива 1 и -1
  // если сумма соседних эл. равна 7, то 1
  for i:= 1 to N do
    begin
    for j:= 1 to N - 1 do
      begin
      if (A[i, j] + A[i, j + 1]) = 7 then arr[i]:= 1;
      break;        
      end;
    end;

  writeln;
  writeln(' - - Получившийся массив: ');
  for i:= 1 to N do
    write('   ', arr[i]:2);
END.