## 16060424 Gürkan KIR ##
## NYP ODEV 3 ##
## 13.05.2020 ##
class Sekil
    
    def bilgiAlma

        #abstract metot
    end
      
    def alan

        #abstract metot
    end
        
    def hacim

        #abstract metot
    end

    def to_s

        #abstract metot
    end

end

class IkiBoyutluSekil < Sekil

    attr_accessor :x,:y # iki boyutlu sekillerin koordinatları

    def bilgiAlma() 
      
        print("X kordinatı:")
        @x= gets.chomp.to_i

        print("Y kordinatı:")
        @y= gets.chomp.to_i
    end

end

class UcBoyutluSekil < IkiBoyutluSekil

    attr_accessor :z # üc boyutlu sekillerin koordinatları

    def bilgiAlma()

        super # türetildiği sınıftaki bilgi al metodunu calıstırır
        print("Z kordinatı:")
        @z= gets.chomp.to_i
    end

end

class Kare < IkiBoyutluSekil
 
    attr_accessor :kenarUzunlugu

   
    def initialize # bu sunuftan nesne olustuğunda ilk calısacak metot
         
        bilgiAlma()
        to_s()
    end
    

    def bilgiAlma()
      
        super # türetildiği sınıftaki bilgi al metodunu calıstırır
        print("Karenin Kenar Uzunluğu:")
        @kenarUzunlugu= gets.chomp.to_i
    end

    def hacim()
        
        return "Kare iki boyutlu oldugu icin hacmi hesaplanamaz"
    end
  
    def alan()

        return @kenarUzunlugu**2
    end

    def to_s()
        
        puts "---------------------------------------"
        puts "Nesnenin Sekli Karedir"
        puts "Karenin Kenar Uzunlugu : #{@kenarUzunlugu}\nKarenin X koordinatı : #{@x}\nKarenin Y koordinatı : #{@y}"
        puts "Karenin Alanı : #{alan()}\nKarenin Hacmi : #{hacim()}"
        puts "---------------------------------------"
    end
   
end

class Cember < IkiBoyutluSekil
 
    attr_accessor :yaricap

    def initialize
         
        bilgiAlma()
        to_s()
    end

    def bilgiAlma()
    
        super # türetildiği sınıftaki bilgi al metodunu calıstırır
        print("Cemberin yaricap Uzunluğu:")
        @yaricap= gets.chomp.to_i
    end

    def hacim
        
        return "Cember iki boyutlu oldugu icin hacmi hesaplanamaz"
    end
  
    def alan()

        return Math::PI*yaricap**2
    end

    def to_s()
        
        puts "---------------------------------------"
        puts "Nesnenin Sekli Cemberdir"
        puts "Cemberin yaricap Uzunlugu : #{@yaricap}\nCemberin X koordinatı : #{@x}\nCemberin Y koordinatı : #{@y}"
        puts "Cemberin Alanı : #{alan()}\nCemberin Hacimi : #{hacim()}"
        puts "---------------------------------------"
    end
   
end

class Kup < UcBoyutluSekil
 
    attr_accessor :kenarUzunlugu

    def initialize
         
        bilgiAlma()
        to_s()
    end

    def bilgiAlma()

        super # türetildiği sınıftaki bilgi al metodunu calıstırır
        print("Küpün Kenar Uzunluğu:")
        @kenarUzunlugu= gets.chomp.to_i
    end

    def hacim
        
        return @kenarUzunlugu**3
    end
  
    def alan()

        return 6*(kenarUzunlugu**2)
    end

    def to_s()
        
        puts "---------------------------------------"
        puts "Nesnenin Sekli Küptür"
        puts "Küpün Kenar Uzunlugu : #{@kenarUzunlugu}\nKüpün X koordinatı : #{@x}\nKüpün Y koordinatı : #{@y}\nKüpün Z koordinatı : #{@z}"
        puts "Küpün Alanı : #{alan()}\nKüpün Hacimi : #{hacim()}"
        puts "---------------------------------------"
    end
   
end

class Kure < UcBoyutluSekil
 
    attr_accessor :yaricap

    def initialize
         
        bilgiAlma()
        to_s()
    end

    def bilgiAlma()
      
        super # türetildiği sınıftaki bilgi al metodunu calıstırır
        print("Kurenin yaricap Uzunluğu:")
        @yaricap= gets.chomp.to_i
    end

    def hacim()
        
        return Math::PI * (yaricap**3) * 4/3
    end
  
    def alan()

        return Math::PI*4*yaricap**2
    end

    def to_s()
        
        puts "---------------------------------------"
        puts "Nesnenin Sekli Küredir"
        puts "Kürenin yaricap Uzunlugu : #{@yaricap}\nKürenin X koordinatı : #{@x}\nKürenin Y koordinatı : #{@y}\nKürenin Z koordinatı : #{@z} "
        puts "Kürenin Alanı : #{alan()}\nKürenin Hacimi : #{hacim()}"
        puts "---------------------------------------"
    end
   
end


def main

    while (true)
        print("İslem yapmak istediğiniz sekil tipi nedir?\n")
        print("Kare için   1\nKüp için    2\nKüre için   3\nÇember için 4 \nCıkıs icin 0 basın")
        print("\nSeçiminiz:")

        secim= gets.chomp.to_i
        if (secim == 1)
          
            kare = Kare.new
        elsif (secim == 2)
          
            kup = Kup.new
        elsif (secim == 3)
          
            kure = Kure.new
        elsif (secim == 4)
        
          cember = Cember.new
        elsif (secim == 0)

          puts "Çıkış işlemi gerçekleşti."
          break
        else 
          print("Hatalı bir seçim yaptınız.\n")      
        end
    end
end

main