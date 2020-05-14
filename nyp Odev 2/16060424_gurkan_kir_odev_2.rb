class GeometricObject

    attr_accessor :color,:filled

    def  to_s()
        puts "rengi : #{@color}  doldurulabilir mi ? #{@filled}"
    end
end

class Circle < GeometricObject

    attr_accessor :yaricap
    @@PI=3.14

    def getArea()

        puts "Dairenin Alanı = #{@@PI*(@yaricap**2)}"
    end

    def getPerimeter()
        
        puts "Dairenin Cevresi = #{2*@@PI*@yaricap}"
    end

    def getDiameter()
        
        puts "Dairenin Çapı = #{2*@yaricap}"
    end
end

class Rectangle < GeometricObject

    attr_accessor :genislik,:yukseklik

    def getArea()
        
        puts "Dikdörtgenin Alanı = #{@genislik*@yukseklik}"
    end

    def getPerimeter()
        
        puts "Dikdörtgenin Çevresi = #{2*(@genislik+@yukseklik)}"
    end
    
end

class Test

    def initialize()
        
        # GeometricObject sınıfından türetilen Circle ve Rectangle sınıfları, GeometricObject sınıfının içindeki 
        # color,filled değişkenlerini ve to_s metodunu kalıtım olarak almıstır  
        daire =Circle.new
        daire.yaricap=10
        daire.color="yesil"
        daire.filled="evet"
        daire.getArea()
        daire.getDiameter()
        daire.getPerimeter()
        daire.to_s()

        dikdortgen=Rectangle.new
        dikdortgen.genislik=10
        dikdortgen.yukseklik=20
        dikdortgen.color="mavi"
        dikdortgen.filled="hayır"
        dikdortgen.getArea()
        dikdortgen.getPerimeter()
        dikdortgen.to_s()
    end
 
end

test=Test.new

