kagıt_atık = ["defter","gazete","kitap","dergi"]
plastik_atık = ["boru","pet","sise","kapak"]
metal_atık = ["teneke","demir","cubuk"]

puts "Atık İsmini Lütfen Türkçe Karakter Kullanmadan Giriniz !!! "
print " Atık İsmi Giriniz : "
atık = gets
if
kagıt_atık.each do |atık1|
    atık1[0]
    if atık1 = atık
        puts "Kağıt Atık Kutusuna Atınız "
    end
end
elsif
plastik_atık.each do |atık2|
    atık2[0]
   if atık2 = atık
    puts "Plastik Atık Kutusuna Atınız "
   end
end
elsif
metal_atık.each do |atık3|
    atık3[0]
    if atık3 = atık
   puts "Metal Atık Kutusuna Atınız "
    end
end
end