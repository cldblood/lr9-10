program zad4_9;
const N = 10;

type tarr = array[1..N] of integer;

var arrx, arrz: tarr;
    i: integer;

  procedure product(arr, arr1: tarr);
  var i, sum, sum1: integer;
      
  begin
    writeln;
    writeln;
    
    for i:= 1 to N do
      begin
      if arr[i] > 0 then sum:= sum + arr[i];
      if arr1[i] > 0 then sum1:= sum1 + arr1[i];
      end;
    writeln('sum = ', sum, '/', sum1);
    
   if sum > sum1 then  
     for i:= 1 to N do
     begin  
       arr1[i]:= arr1[i] * 10;
       write(arr1[i], '[', i, ']', '  ');
     end;
     
   if sum1 > sum then
     for i:= 1 to N do
     begin  
       arr[i]:= arr[i] * 10;
       write(arr[i], '[', i, ']', '  ');
     end;
  end;
  
  
  
  
  
BEGIN
  write('Массив 1 = ');
  for i:= 1 to N do
    begin
    arrx[i]:= random(-10, 10);
    write(arrx[i], '[', i, ']', '  ');
    end;
    
  writeln;
  
  write('Массив 2 = ');
  for i:= 1 to N do
    begin
    arrz[i]:= random(10);
    write(arrz[i], '[', i, ']', '  ');
    end;
    
  product(arrx, arrz);
END.