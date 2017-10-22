#kredi hesaplama

#ihtiyaç_kredisi_katsayısı = 2
#konut_kredisi_katsayısı = 3
#tasıt_kredisi_katsayısı = 4
#kobi_kredisi_katsayısı = 5

puts " GK Banka Hoşgeldiniz"

puts "İhtiyaç Kredisi İçin 1'i tuslayınız : "
puts "Konut kredsi için 2'i tuslayınız : "
puts " Taşıt kredisi icin 3'ü tuslayınız :"
puts "Kobi kredisi icin 4'ü tuslayınız :"
print "Kredi Türünüzü Seçiniz :"
  kredi_türünüz = gets.chomp.to_i
print " Ne Kadar Para Çekeceğinizi Giriniz : "
  para = gets.chomp.to_i
print " Çekilen Parayı Kaç Ayda Ödeyeceğinizi Giriniz : "
  ay = gets.chomp.to_i


  if kredi_türünüz == 1
    faiz_kat_sayısı = 2
      faiz = para * ay * faiz_kat_sayısı / 1200
        toplampara = para + faiz
    puts " Talep Ettiğiniz Miktara İşlenecek Faiz Tutarı : #{faiz} "
    puts " Toplam Ödemeniz Gereken Miktar : #{toplampara} "
elsif kredi_türünüz == 2
    faiz_kat_sayısı = 3
      faiz = para * ay * faiz_kat_sayısı / 1200
        toplampara = para + faiz
    puts " Talep Ettiğiniz Miktara İşlenecek Faiz Tutarı : #{faiz} "
    puts " Toplam Ödemeniz Gereken Miktar : #{toplampara} "
  elsif kredi_türünüz == 3
    faiz_kat_sayısı = 4
      faiz = para * ay * faiz_kat_sayısı / 1200
        toplampara = para + faiz
    puts " Talep Ettiğiniz Miktara İşlenecek Faiz Tutarı : #{faiz} "
    puts " Toplam Ödemeniz Gereken Miktar : #{toplampara} "
  elsif kredi_türünüz == 4
    faiz_kat_sayısı = 5
      faiz = para * ay * faiz_kat_sayısı / 1200
        toplampara = para + faiz
    puts " Talep Ettiğiniz Miktara İşlenecek Faiz Tutarı : #{faiz} "
    puts " Toplam Ödemeniz Gereken Miktar : #{toplampara} "
   else
    puts "Hatalı Tuşlama Yaptınız "
  end