puts " vize notunuzu giriniz "
 vize = gets.chomp
puts " final notnuzu giriniz "
 final = gets.chomp
 ortalama = vize.to_i * 40 / 100 + final.to_i * 60 / 100
 puts " sonuç "
 puts ortalama
   if ortalama >= 60 && final.to_i >= 50
puts " geçtiniz "
   else ortalama <= 60 && final.to_i <=50 
puts " final 50 altı olduğu için kaldınız "
   end
