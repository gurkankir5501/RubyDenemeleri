paralar = [ [10,"48568547"] , [5,"6465464865"] , [20,"8645486465"] , [50 ,"gürkankir"] , [100 , "erdememinaga"] , [200 , "564984566"] ] 
sahteler = []
gercekler = []

paralar.each do |para|
  para.last
    if para.last == "gürkankir"
     sahteler << para
      elsif para.last == "erdememinaga"
        sahteler << para
         else
          gercekler << para
           end
             end

 puts " gercekler = #{ gercekler } "
 puts " sahteler = #{sahteler }"

 toplam_sahte = 0
   sahteler.each do |sahte|
     toplam_sahte = toplam_sahte + sahte.first
      end
      toplam_gercek = 0
   gercekler.each do | gercek |
    toplam_gercek = toplam_gercek + gercek.first
     end

    puts "sahte paraların toplamı = #{toplam_sahte} "
    puts "gercek paraların toplamı = #{toplam_gercek}"