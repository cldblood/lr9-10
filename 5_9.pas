program zad5_9;
const N = 10;

type tarr = array[1..N] of integer;

var arrx, arrz: tarr;
    i, i1: integer;

  procedure ff(arr, arr1: tarr);
  var i, max, min, count, count1, i1: integer;
      
  begin            // где кратный 5 чаще - заменить макс. эл на ноль, а в др. после мин эл умножить все эл на 2
    writeln;
    writeln;
    max:= -10;
    min:= 20;
    
    for i:= 1 to N do
      begin
      if arr[i] mod 5 = 0 then count += 1;
      if arr1[i] mod 5 = 0 then count1 += 1;
      end;
    writeln('count = ', count, '/', count1);
    
    
    // замена max на 0
    write('max 1 = ');
    if count > count1 then
    begin
      for i:= 1 to N do  
        if arr[i] > max then max:= arr[i]; 
   
      for i:= 1 to N do
      begin
      if max = arr[i] then arr[i]:= 0;
      write(arr[i], '[', i, ']', '  '); 
      end; 
    end;
    writeln;
    
    // умножение на 2 после мин эл
    write('min 2 = ');
    if count > count1 then 
    begin
    for i:= 1 to N do             // вычисление мин. эл.
        if arr1[i] < min then 
          begin 
          min:= arr1[i];
          i1:= i + 1;             // позиция вычисляется
          end;
          
     for i:= i1 to N do
        begin
        arr1[i] := arr1[i] * 2;
        write(arr1[i], '[', i, ']', '  '); 
        end;  
        
    end;
    writeln;
    
////////////////////////////////////////////
////////////////////////////////////////////

    // замена max на 0
    write('max 2 = ');
    if count < count1 then
      begin
      for i:= 1 to N do  
        if arr1[i] > max then max:= arr1[i]; 
    
      for i:= 1 to N do
        begin
        if max = arr1[i] then arr1[i]:= 0;
        write(arr1[i], '[', i, ']', '  '); 
        end; 
      end;
    writeln;
    
    // умножение на 2 после мин
    write('min 1 = ');
    if count < count1 then 
    begin
    for i:= 1 to N do             // вычисление мин. эл.
        if arr[i] < min then 
          begin 
          min:= arr[i];
          i1:= i + 1;             // позиция вычисляется
          end;
          
     for i:= i1 to N do
        begin
        arr[i] := arr[i] * 2;
        write(arr[i], '[', i, ']', '  '); 
        end;  
    end;
    writeln;
    
  end;

  
  
  
  
  
BEGIN
  write('Массив 1 = ');
  for i:= 1 to N do
    begin
    arrx[i]:= random(10);
    write(arrx[i], '[', i, ']', '  ');
    end;
    
  writeln;
  
  write('Массив 2 = ');
  for i:= 1 to N do
    begin
    arrz[i]:= random(50);
    write(arrz[i], '[', i, ']', '  ');
    end;
    
  ff(arrx, arrz);
END.
