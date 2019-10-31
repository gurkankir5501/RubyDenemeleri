notlar = [
["ahmet",50,60],["mehmet",60,90],
["temel",70,20],["dursun",0,100],
["fadime",100,100],["zeynep",30,30]
]
 agırlıklı_not_ortalaması = []
 cana_giren_ogrenciler = []
 cana_göre_dersi_gecen_ogrenciler = []

 puts "Verilen Öğrenciler Ve Notları : #{notlar}"
 notlar.each do |puanlar|
    puanlar[0]
    puanlar[1]
    
 ortalama = (puanlar[1] * 40/100).to_f + (puanlar[2] * 60/100).to_f
  ogrencinin_donem_sonu_ortalaması = puanlar[0],ortalama
    agırlıklı_not_ortalaması << ogrencinin_donem_sonu_ortalaması
     end
puts "Öğrencilerin Dönem Sonu Not Ortalamaları : #{agırlıklı_not_ortalaması} "

puanlar_toplamı = 0
 agırlıklı_not_ortalaması.each do |puan|
    puan[1]
      puanlar_toplamı = puanlar_toplamı + puan[1]
       end
    
    genel_puan_ortalaması = (puanlar_toplamı).to_f / notlar.size
    
agırlıklı_not_ortalaması.map do |puanı|
puanı[0]
puanı[1]
if puanı[1] >= 20 && puanı[1] <= 80
   cana_giren = puanı[0],puanı[1]
    cana_giren_ogrenciler << cana_giren 
     end
      end
      puts "Çana Giren Öğrenciler : #{cana_giren_ogrenciler}"

toplam_puan1 = 0
 cana_giren_ogrenciler.each do |ii|
  ii[1]
   toplam_puan1 = toplam_puan1 + ii[1]
    end
    cana_girenlerin_puan_ortalaması = (toplam_puan1).to_f / cana_giren_ogrenciler.size

notlar.each do |i| 
    i[0]
    i[1]
    i[2]
    ortlm = i[1] * 40 / 100 + i[2] * 60 / 100
    if ortlm >= 40 && i[2] >= 50 && ortlm >=  cana_girenlerin_puan_ortalaması
        a = i[0],ortlm
         cana_göre_dersi_gecen_ogrenciler << a
          end
           end

puts "Çana Göre Dersi Geçen Öğrenciler : #{cana_göre_dersi_gecen_ogrenciler} "


cana_göre_dersi_gecen_ogrenciler.each do |ogrenci|
    ogrenci[0]
    ogrenci[1]
     
puts "#{ogrenci[0]} isimli öğrenci #{ogrenci[1]} not ortalamasıyla dersi geçmiştir. "
end


gecenlerin_yuzdesi = 100 * (cana_göre_dersi_gecen_ogrenciler.size).to_f / notlar.size

puts "Toplam Öğrenci Sayısı : #{notlar.size}"
puts "Geçen Öğrenci Sayısı : #{cana_göre_dersi_gecen_ogrenciler.size}"
puts "Genel Sınıf Ortalaması : #{genel_puan_ortalaması}"
puts "Çana Girenlerin Ortalaması : #{cana_girenlerin_puan_ortalaması} " 
puts "Geçenlerin Yüzdesi : % #{gecenlerin_yuzdesi} "