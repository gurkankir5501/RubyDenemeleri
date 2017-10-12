#{boy-kütle endeksi 'case' denemesi}

   print " boyunuzu giriniz : "
 boy = gets.chomp.to_i

   print " kilonuzu giriniz : "
 kilo = gets.chomp.to_i
   
   ortalama = kilo * 10000 / boy ** 2

   print " boy-kütle endeksiniz : "
   puts ortalama

   case
   when   ortalama < 20 then puts " kilolusunuz , zayıflamalısınız "
   
   when   ortalama >25 then puts " zayıfsınız , kilo almalısınız "
   
   when   ortalama >= 20 && ortalama <= 25 then puts " ideal kilodasınız "

   end