print " sayi giriniz : "
sayi = gets.chomp.to_i

case 
when sayi % 7 == 0
    puts " pazartesi günü "
when sayi % 7 == 1
    puts " salı günü "
when sayi % 7 == 2
     puts " çarşamba günü "
when sayi % 7 == 3
    puts " perşembe günü "
when sayi % 7 == 4
    puts " cuma günü "
when sayi % 7 == 5
    puts  " cumartesi günü "
when sayi % 7 == 6
    puts " pazar günü "
end

