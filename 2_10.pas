program zad2_10;

const
  N = 6;
  M = 8;

type
  matrix = array [1..M, 1..N] of integer;

var
  arr: array[1..M] of integer;
  i, j: integer;
  A: matrix;

begin
  writeln(' -  -  Двумерный массив: ');
  // формирование массива 8*6
  for i := 1 to M do                   //  цикл по строкам
  begin                          
    for j := 1 to N do                 // цикл по столбцам
    begin
      A[i, j] := random(10)-2;
      write(A[i, j]:3);
    end;
    writeln;
  end;
  
  
  // заполнение массива -1
  for i:= 1 to M do
    arr[i]:= -1;
  
  
  // запись первого элемента строки в новый массив, если по модулю больше 4
  for i := 1 to M do
  begin
    for j := 1 to N do
    begin
      if (A[i, j] > 0) and (A[i, j + 1] > 0) and (A[i, j + 2] > 0) and
      (A[i, j + 3] > 0) and (A[i, j + 4] > 0) and (A[i, j + 5] > 0) then arr[i]:= 1;
      break;
    end;
  end;
  
  writeln;
  writeln(' - - Получившийся массив: ');
  for i:= 1 to M do
    write('   ', arr[i]:2);
end.