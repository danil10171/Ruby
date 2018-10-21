#Перевод градусов
gradus = gets.to_f
shkala = gets
import = gets
if shkala == "F\n"
	if import == "C\n"
		gradus1 = (gradus - 32) / 1.8
		puts "#{gradus} градусов по Фарингейту равно #{gradus1} градусам Цельсия"
	elsif import == "F\n"
		puts "Перевод в одну и ту же шкалу"	
	else
		gradus1 = (gradus + 459.67) / 1.8
		puts "#{gradus} градусов по Фарингейту равно #{gradus1} градусам Кельвина"
	end	
elsif shkala == "C\n"
	if import == "F\n"
		gradus1 = gradus * 1.8 + 32 
		puts "#{gradus} градусов по Цельсию равно #{gradus1} градусам Фарингейта"
	elsif import == "C\n"
		puts "Перевод в одну и ту же шкалу"		
	else
		gradus1 = gradus + 273.15
		puts "#{gradus} градусов по Цельсию равно #{gradus1} градусам Кельвина"
	end	
else
	if import == "C\n"
		gradus1 = gradus - 273.15
		puts "#{gradus} градусов Кельвина равно #{gradus1} градусам Цельсия"
	elsif import == "K\n"
		puts "Перевод в одну и ту же шкалу"		
	else
		gradus1 = gradus * 1.8 - 459.67
		puts "#{gradus} градусов Кельвина равно #{gradus1} градусам Фарингейта"
	end
end			
