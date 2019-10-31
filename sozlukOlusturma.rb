puts "sisteme Hoş geldiniz "
puts "Sistemi Kullanmak İçin Gerekli Komutlar Aşağıda Listelenmiştir "
puts "Giriş Yapmak İçin Komut -> Login "
puts "İngilizceden Türkçeye Kelimeler İçin Komut -> EngTr "
puts "Türkçeden İngilizceye Kelimeler İçin Komut -> TrEng "
puts "Çıkmak İçin Komut -> Exit "

loop do
    print "komut giriniz : "
    komut = gets.chomp
    if komut == "login"
        puts "başarılı sekilde sisteme giriş yaptınız "
        break
    elsif komut == "exit"
        puts "Sistemden Çıkış Yapmış Bulunmaktasınız "
        exit
    else 
        puts "yanlış komut girdiniz , tekrar deneyiniz"
    end
end

 kullanicilar = Hash.new
  dosya = *File.read("login.txt").split("\n")
   dosya.each do |x|
    kullanici , sifre = x.chomp.split(",")
     kullanicilar[kullanici] = sifre
    end
hata = " Girdiğiniz Kelime Bulunmamaktadır "


 kelimeler = Hash.new("#{hata}")
  dosya1 = *File.read("eng_tur_words.txt").split("\n")
   dosya1.each do |y|
    eng , tr = y.chomp.split(",")
     kelimeler[eng] = tr
   end

   loop do
    
       print "Kullanıcı Adınızı Giriniz :"
       kullanici_adi = gets.chomp
       print "Şifrenizi Giriniz :" 
       sifre = gets.chomp
   
   if kullanicilar["#{kullanici_adi}"] == sifre
     puts "Başarılı Bir Giriş Yaptınız "
     break
   else 
     puts "Kullanıcı Adınız İle Şifreniz Çelişmektedir , Tekrar deneyiniz "
   
      end
    end

    loop do

       print "Komut Giriniz : "
        komut1 = gets.chomp

        if komut1 == "EngTr" 
            print "İngilizce Kelimenizi Giriniz :"
            kelime1 = gets.chomp
            puts  kelimeler.values_at("#{kelime1}")
        elsif komut1 == "TrEng"
            print "Türkçe Kelimenizi Giriniz : "
            kelime = gets.chomp  
            puts  kelimeler.key("#{kelime}")
        elsif komut1 == "exit"
            puts " Sistemden Çıkış Yapmış Bulunmaktasınız "
            exit
        else
            puts "Hatalı Bir Komut Girdiniz"
        end 
    end 