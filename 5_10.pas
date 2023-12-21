program zad5_10;

const
  N = 8;
  
type
  matrix = array [1..N, 1..N] of integer;
  
var
  arr, arr1: array[1..N] of integer;
  i, j, max, count: integer;
  A: matrix;
  
  
BEGIN
  max:= 0;
  // формирование массива 8*8
  writeln(' -  -  Двумерный массив: ');
  for i:= 1 to N do
    begin
    for j:= 1 to N do
      begin
      A[i, j]:= random(5);
      write(A[i, j]:3);
      end;
    writeln;
    end;
    
    
  // заполнение массива -1
  for i:= 1 to N do
    arr[i]:= -1;
  
  
// записываем максимумы для каждой строчки
  for i:= 1 to N do
    begin
    for j:= 1 to N do 
      begin
      if (A[i, j] > max) then 
        begin
        max:= A[i, j];
        arr1[i]:= A[i, j];
        end;
      end;
      max:= 0;
    end;
    
    
 // определение один маскимум или их два
  for i:= 1 to N do
    begin
    for j:= 1 to N do 
      begin
      if arr1[i] = A[i, j] then
        count += 1;
      end; 
    if count < 2 then begin arr[i]:= 1 end
    else begin arr[i]:= -1 end;
    count:= 0;
    end;  
    
  writeln;
  writeln(' - - Получившийся массив: ');
  for i:= 1 to N do
    write('   ', arr[i]:2);
END.