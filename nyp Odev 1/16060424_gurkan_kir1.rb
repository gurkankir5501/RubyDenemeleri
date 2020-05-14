class Hasta_Covid_19

  attr_reader :hastaTc, :hastaAdi,:hastaSoyadi,:hastaCinsiyeti,:hastaYasi,:hastaSemptom,:hastaKronik,:hastaIli,:hastaTemasSayisi

  @@hastaSayisi=0

  def initialize()

    @@hastaSayisi=@@hastaSayisi+1
  end

  def self.ToplamHastaSayisi()

    return @@hastaSayisi
  end

  def hastaBilgileri()

    hastaBilgileri=[]
    return hastaBilgileri.push(hastaTc,hastaAdi,hastaSoyadi,
                              hastaCinsiyeti,hastaYasi,hastaSemptom,
                              hastaKronik,hastaIli,hastaTemasSayisi)

  end
  
  def kurucu()

    print("Hastanın TC Numarasını Giriniz : ")
    @hastaTc= gets.chomp.to_i

    print("Hastanın Adını Giriniz : ")
    @hastaAdi= gets.chomp.to_s

    print("Hastanın Soyadını Giriniz :")
    @hastaSoyadi= gets.chomp.to_s

    print("Hastanın Cinsiyetini Giriniz (Erkek/Kadın) :")
    @hastaCinsiyeti= gets.chomp.to_s

    print("Hastanın Yaşını Giriniz :")
    @hastaYasi= gets.chomp.to_i

    print("Hastanın Semptomlarını Belirtiniz Yok ise 0 Bilgisi Giriniz : ")
    @hastaSemptom= gets.chomp.to_s

    print("Hastanın Kronik Rahatsızlıklarını belirtiniz Yok ise 0 Bilgisi Giriniz :")
    @hastaKronik= gets.chomp.to_s

    print("Hastanın Bulunduğu İli Giriniz :")
    @hastaIli=gets.chomp.to_s

    print("Hastanın Temasta Bulunduğu Tahmini Kişi Sayısı Belirtiniz Yok ise 0 Bilgisi Giriniz :")
    @hastaTemasSayisi=gets.chomp.to_i

  end
  
end


def main()

  puts "Sağlık Bakanlığı Covid-19 Bilgi Sistemine Hoş Geldiniz"

  hastalar=[]
  toplamTemasSayisi=0
  while (true)
    
    print "Komut Giriniz :"
    komut=gets.chomp.to_s

    if (komut == "EKLE")

      hasta = Hasta_Covid_19.new
      hasta.kurucu()
      toplamTemasSayisi = hasta.hastaTemasSayisi + toplamTemasSayisi
      hastalar << hasta.hastaBilgileri()
 
    elsif (komut == "LISTELE")
      
      puts "Toplam Hasta Sayisi #{Hasta_Covid_19.ToplamHastaSayisi}'dir . "
      puts hastalar
      puts "Toplam enfekte olması muhtemel kişi sayısı : #{toplamTemasSayisi}"
      puts "------------------------------------------------"
      
    elsif (komut == "CIKIS")

      puts "Sağlıklı Günler Dileriz"
      break
    else

      puts "Hatalı Bir Komut Girdiniz "
    end

  end

end

main()