#{Boy-Kütle Endeksi}
   print " Boyunuzu Giriniz : "
boy = gets.chomp.to_i

   print " Kilonuzu Giriniz : "
kilo = gets.chomp.to_i

ortalama = kilo * 10000 / boy ** 2

if ortalama > 25 
    print  " Boy-Kütle Endeksiniz : "
    puts ortalama
    puts " Zayıfsınız , Kilo Almalısınız "

elsif ortalama < 20 
    print  " Boy-Kütle Endeksiniz : "
    puts ortalama
   puts " kilolusunuz , Kilo vermelisiniz "
elsif ortalama >= 20 && ortalama <= 25
    print  " Boy-Kütle Endeksiniz : "
    puts ortalama
   puts " ideal kilodasınız "

   end