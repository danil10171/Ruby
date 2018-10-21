#Работа с файлом
require "csv"

stat_array = []
CSV.read("file.csv").each do |a|
  stat_array.insert(stat_array.length, a[0].to_f)
end

puts "1. Максимальное"
puts "2. Минимальное"
puts "3. Среднее значение"
puts "4. Исправленная дисперсия"

num = gets.to_i
case num
when 1
  puts "Максимальное число: #{stat_array.max}"
when 2
  puts "Минимальное число: #{stat_array.min}"
when 3
  sum = stat_array.inject(0){ |result, elem| result + elem }
  puts "Среднее значение: #{sum / stat_array.length}"
when 4
  sum = stat_array.inject(0){ |result, elem| result + elem }
  avg = sum / stat_array.length
  disp = (stat_array.inject(0) { |result, elem| result + ((elem - avg) ** 2) }) / (stat_array.length - 1)
  puts "Дисперсия: #{disp}"
else
  puts "Неверный вариант"
end
