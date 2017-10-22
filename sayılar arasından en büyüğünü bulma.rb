sayilar = [7,14,25,36,51,65,74,56]
 en_büyük_sayi = sayilar.first
  sayilar.each do |sayi|
  if sayi > en_büyük_sayi
 en_büyük_sayi = sayi
end
 end
 puts en_büyük_sayi