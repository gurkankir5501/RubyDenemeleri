meyveler = [[10,"elma","saglam"],[20,"armut","saglam"],[15,"cilek","cürük"],[50,"kiraz","saglam"],[20,"erik","saglam"],[45,"portakal","cürük"]]
cürükler = [ ]
saglamlar = [ ]
saglammeyveler = [ ]
cürükmeyveler = [ ]

  meyveler.each do |meyve|
    meyve[2]
      if meyve[2] == "saglam"
        saglamlar << meyve
          else 
            cürükler << meyve
             end
              end

  saglamlar.each do |saglam|
    saglam[1]
     if saglam[1] == saglam[1]
          saglammeyveler << saglam[1]
           end
             end

  cürükler.each do |cürük|
    cürük[1]
    if cürük[1] = cürük[1]
          cürükmeyveler << cürük[1]  
           end
            end         
    puts "saglam meyveler = #{saglammeyveler} "
    puts "cürük meyveler = #{cürükmeyveler} "

    toplamsaglam = 0
     saglamlar.each do |saglam|
      toplamsaglam = toplamsaglam + saglam[0]
       end
    toplamcürük = 0
     cürükler.each do |cürük|
       toplamcürük = toplamcürük + cürük[0]
     end

       puts "saglam meyvelerin kilosu = #{toplamsaglam}"
       puts "çürük meyvelerin kiosu = #{toplamcürük} "
       

