program zad1_10;

const
  N = 6;
  M = 8;

type
  matrix = array [1..N, 1..M] of integer;

var
  arr: array[1..N] of integer;
  i, j: integer;
  A: matrix;

begin
  writeln(' -  -  Двумерный массив: ');
  // формирование массива 6*8
  for i := 1 to N do
  begin             //  цикл по строкам
    for j := 1 to M do                 // цикл по столбцам
    begin
      A[i, j] := random(10);
      write(A[i, j]:2);
    end;
    writeln;
  end;
  
  
  // запись первого элемента строки в новый массив, если по модулю больше 4
  for i := 1 to N do
  begin
    for j := 1 to M do
    begin
      if abs(A[i, j]) > 4 then arr[i] := A[i, 1];
      break; 
    end;
  end;
  
  writeln;
  writeln('Получившийся массив: ', arr);
end.