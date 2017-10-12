AA = 4.0
BA = 3.5
BB = 3.0
CB = 2.5
CC = 2.0
DC = 1.5
DD = 1.0
FF = 0

blgsyrmg = AA          #{bilgisayar mühendisliğine giriş - kredi = 3 }
prglmgrs = BA            #{programlamaya giriş 1 - kredi = 3 }
ayrkmtmtk = CC              #{ayrık matematik - kredi = 3 }
isvg = DD                  #{iş sağlığı ve güvenliği - kredi = 2 }
fzk1 =  CC                 #{fizik1 - kredi = 3 }
mtmtk1 =  AA                #{matematik 1 - kredi = 4 } 
ing1 = DC              #{ingilizce 1 - kredi = 2 }

toplam = blgsyrmg * 3 + prglmgrs * 3 + ayrkmtmtk * 3 + isvg * 2 + fzk1 * 3 + mtmtk1 * 4 + ing1 * 2

gano = toplam / 20
print " gano notunuz : "
puts gano



