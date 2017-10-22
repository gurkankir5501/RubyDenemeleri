#{parola koyma}
print " Parolanızı Giriniz : "
parola = gets.chomp.to_i

print " parolanızı tekrar giriniz : "
tekrar = gets.chomp.to_i
  
if parola == tekrar 
   
    puts " parolanız başarıyla oluşturulmuştur "
 else parola =! tekrar
    
    puts " parolanız eşleşmemektedir "
   end 