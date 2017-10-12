ögrenci_bilet_ücreti = 5
yetiskin_bilet_ücreti = 10
  puts "yasınızı girer misiniz"
yas = gets.chomp
   if yas.to_i <= 20 
  puts "ücretiniz 5 tl"
   else yas.to_i > 20
   puts " ücretiniz 10 tl "
   end