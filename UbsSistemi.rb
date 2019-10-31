puts "Sisteme Hoşgeldiniz "
puts "Öğretmen Girişi İçin 1'e Basınız "
puts "Öğrenci Girişi İçin 2'e Basınız "
puts "Çıkış Yapmak İçin 0'a Basınız "
puts "------------------------------------------------"

teacher_users = Hash.new
loginteacher = File.read("loginteacher.txt").split("\n")
loginteacher.each do |users1|
    kullanici1,sifre1 = users1.split(",")
    teacher_users[kullanici1] = sifre1
end
student_no = {}
student_users = Hash.new
students = File.read("students.txt").split("\n")
students.each do |users2|
    kullanici2,sifre2 = users2.split(",")
    student_users[kullanici2] = sifre2
    student_no[kullanici2] = kullanici2
end
Kayıtlı = {}
lessonn = []
lesson = {}
lessonCodes = File.read("lessonCodes.txt").split("\n")
lessonCodes.each do |lesson1|
    ders,kodu = lesson1.split(" - ")
    lesson[kodu] = kodu
    lessonn << kodu
end

    while  true 
        print "komut giriniz :"
        komut = gets.chomp
        
            if komut == "1"
                puts "Öğretmen Girişi Yaptınız..."
                while true
                 print "Kullanıcı Adınız :"
                 kullanici_adi = gets.chomp
                 print "Parolanız : "
                 parola = gets.chomp

                 if teacher_users[kullanici_adi] == parola
                    puts "Sisteme Giriş Yaptınız "
                    break
                 else
                    puts "Kullanı Adınız İle Parolanız Çelişiyor,Tekrar Deneyiniz..."
                 end
                end

                while true
                    puts "Yeni Bir Öğrenciye Not Girmek İçin 1 , Sistemden Çıkış Yapmak İçin Herhangi Bir Tuşa Basınız..."
                    print "Komut Giriniz :"
                    komut = gets.chomp
                    if komut == "1"
                        while true 
                            print "okul numarası giriniz :"
                            okulnosu = gets.chomp
                            print "ders kodu giriniz :"
                            derscodu = gets.chomp
                            print "not giriniz :"
                            ogrencinotu = gets.chomp
                            
                            if student_no[okulnosu] == okulnosu && lesson[derscodu] == derscodu
                                
                                dosya = File.new("#{okulnosu}#{derscodu}.txt","w")
                                dosya.puts("#{derscodu},#{ogrencinotu}")
                                dosya.close
                                puts "Başarılı Bir Şekilde Not Girişi Yaptınız ..."
                                
                                break
                            else 
                                puts "Böyle Bir Öğrenci veya Ders Sistemde Kayıtlı Değildir ,Tekrar Deneyiniz ..."
                                break
                            end
                        end
                    else komut =! 1
                        puts "Sistemde Çıkış Yaptınız..."
                        exit
                    end
                end


            elsif komut == "2"
                puts "öğrenci girişi yaptınız "
                
                while true
                 print "Öğrenci Numaranızı Giriniz :"
                 numara = gets.chomp
                 print "Parolanızı Giriniz :"
                 ogrenciparolasi = gets.chomp
                
                    if student_users[numara] == ogrenciparolasi
                     puts "Sisteme Başarılı Bir Şekilde Giriş Yaptınız ..."

                     while true
                         print "İstediğiniz Dersi göstermek İçin 1'e , Tüm Dersleri Göstermek İçin 2'e , Çıkış Yapmak İçin Herhangi Bir Tuşa Basınız :"
                          göster = gets.chomp

                            if göster == "1"
                                 print "Ders Kodunuzu Giriniz :"
                                 dersimincode = gets.chomp

                                if lesson[dersimincode] == dersimincode
                               degisken = File.read("#{numara}#{dersimincode}.txt")
                               puts degisken     
                                elsif lesson[dersimincode] != dersimincode
                                     puts "Böyle Bir Ders Sistemde Yoktur ..."

                                else puts "#{dersimincode}'lu Dersin Notu Girilmemiştir!"
                                end

                            elsif göster == "2"
                                 puts Kayıtlı
                            else 
                                puts  "Sistemden Çıkış Yapıyorsunuz ..."
                                exit      
                            end
                        end

                    else
                     puts "Okul Numaranız İle Parolanız Çelişiyor , Tekrar Deneyiniz ..."
                    end
                end
            

            elsif komut == "0"
                puts "Sistemden Çıkış yaptınız" 
                exit
            else 
                puts "hatalı giriş yaptınız ,tekrar deneyiniz "
            end
    end