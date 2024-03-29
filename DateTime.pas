﻿begin
  Println('Проверка года на високосность');
  var year := ReadInteger('Введите год:');
  var flag := True;
  if ((year mod 4 = 0) and (year mod 100 <> 0)) or ((year mod 100 = 0) and (year mod 400 = 0)) then
    Println('Високосный год')
  else
  begin
    Println('Невисокосный год');
    flag := False
  end;
  if flag = True then
    Println($'В {year} году 366 дней')
  else
    Println($'В {year} году 365 дней');
  Println();
  
  Println('Определение, какая из двух дат ближе к Новому Году');
  Println('Введите первую дату:');
  var day1 := ReadInteger(' день:');
  var month1 := ReadInteger(' месяц:');
  Println();
  Println('Введите вторую дату:');
  var day2 := ReadInteger(' день:');
  var month2 := ReadInteger(' месяц:');
  Assert((0 < day1) and (day1 <= 31) and (0 < day2) and (day2 <= 31)); 
  Assert((0 < month1) and (month1 <= 12) and (0 < month2) and (month2 <= 12));
  if (month1 > month2) or ((month1 = month2) and (day1 > day2)) then
    Println('Первая дата ближе к НГ')
  else
    Println('Вторая дата ближе к НГ');
  Println();
  
  Println('Определение суммарного количества дней между двумя годами');
  var (year1, year2) := ReadInteger2('Введите два года:');
  var summa := 0; //суммарное количество дней 
  for var i := year1 to year2 do
  begin
    if ((i mod 4 = 0) and (i mod 100 <> 0)) or ((i mod 100 = 0) and (i mod 400 = 0)) then
      summa += 366
    else
      summa += 365
  end;
  Println($'Сумма дней между {year1} и {year2} годами = {summa}');
  Println();
  
  Println('Вычисление количества секунд в заданном количестве часов');
  var hours := ReadInteger('Введите количество часов:');
  Println($'В {hours} часах {hours*60*60} секунд')
end.

{
Проверка года на високосность 
Введите год: 2022
Невисокосный год 
В 2022 году 365 дней 

Определение, какая из двух дат ближе к Новому Году 
Введите первую дату: 
 день: 13
 месяц: 12

Введите вторую дату: 
 день: 25
 месяц: 7
Первая дата ближе к НГ 

Определение суммарного количества дней между двумя годами 
Введите два года: 2022 2024
Сумма дней между 2022 и 2024 годами = 1096 

Вычисление количества секунд в заданном количестве часов 
Введите количество часов: 5
В 5 часах 18000 секунд 
}