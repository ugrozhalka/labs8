begin
  var year := ReadInteger('Введите год:');
  if ((year mod 4 = 0) and (year mod 100 <> 0)) or ((year mod 100 = 0) and (year mod 400 = 0)) then
    Println('Високосный год')
  else
    Println('Невисокосный год');
end.