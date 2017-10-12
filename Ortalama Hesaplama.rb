 print "  vize notunuzu giriniz : "
vize = gets.chomp.to_i
 print " final notunuzu giriniz : "
final = gets.chomp.to_i
ortalama = vize * 40 / 100 + final * 60 / 100
 print " ortalamanız : "
 puts ortalama
  if ortalama >= 60 && final >= 50
 puts " tebrikler geçtiniz "
  else 
    puts " final ile kaldınız "
  end
