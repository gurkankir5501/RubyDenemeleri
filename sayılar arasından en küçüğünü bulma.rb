sayilar = [ 78,45,25,74,36,45,12,2,74,65,25,6 ] 
enkücüksayi = sayilar[0]
sayilar.each do |sayi| 
  if sayi < enkücüksayi
    enkücüksayi = sayi
   end
  end  
  puts enkücüksayi