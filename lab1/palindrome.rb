#Определения палиндрома
puts "Введите слова для проверки"
stroka = gets
stroka = stroka.slice(0, stroka.length - 1)
if stroka == stroka.reverse
	puts "Палиндром"
else
	puts "Не палиндром"
end		 

