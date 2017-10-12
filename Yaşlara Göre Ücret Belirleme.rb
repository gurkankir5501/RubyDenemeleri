#cocuk = 5 tl yas <= 6 
#öğrenci = 10 tl yas >=7 && 20 >= yas
#yetiskin = 15 50 > yas && yas > 20
#yaslı = 20 yas >= 50 
print " yaşınızı giriniz : "
yas = gets.chomp.to_i
  
  if  
     yas <= 6 
      puts " ücretiniz 5 tl "
  elsif 
     yas >=7 && 20 >= yas
      puts " ücretiniz 10 tl "
  elsif
     50 > yas && yas > 20
      puts " ücretiniz 15 tl "
  elsif
      yas >= 50 
      puts " ücrtiniz 20 tl "

  end