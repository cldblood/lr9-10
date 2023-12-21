program zad4_10;

const
  N = 8;
  
type
  matrix = array [1..N, 1..N] of integer;
  
var
  arr: array[1..N] of integer;
  i, j, min, sum, c: integer;
  avg: real;
  A: matrix;
  
  
BEGIN
  min:= 10;
  // формирование массива 8*8
  writeln(' -  -  Двумерный массив: ');
  for i:= 1 to N do
    begin
    for j:= 1 to N do
      begin
      A[i, j]:= random(10);
      write(A[i, j]:3);
      end;
    writeln;
    end;
       
    
  // заполнение одномерного массива min el.
  for i:= 1 to N do
    begin
    for j:= 1 to N do 
      if A[i, j] < min then 
      begin
        min:= A[i, j];
        arr[i]:= A[i, j];
        end;
      min:= 10;
    end;

  writeln;
  writeln(' - - Получившийся массив: ');
  for i:= 1 to N do
    write('   ', arr[i]:2);
  
  // определить содержит ли  среди эл. свое среднее арифметическое
  for i:= 1 to N do
    sum:= sum + arr[i];
  
  avg:= sum / 2;
  avg:= round(avg);
  
  writeln;
  writeln;
  writeln('Среднее арифметическое массива равно = ', avg);
  
  for i:= 1 to N do
    if arr[i] = avg then
      begin
      writeln('Среднее арифметическое в массиве есть');
      c += 1;
      end;
      
  if c = 0 then writeln('Среднего арифметического в массиве нет');
END.