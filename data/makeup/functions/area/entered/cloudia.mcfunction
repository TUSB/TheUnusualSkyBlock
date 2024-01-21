

function makeup:area/entered/
title @s subtitle {"translate":"== CLOUDIA =="}
title @s title {"translate":"クラウディア","color":"#d9eaf9"}
execute if entity @s[x=-1901,y=110,z=-137,distance=..16] run playsound tust:area.entered.cloudia_tutorial music @s ~ ~ ~ 1 1
execute unless entity @s[x=-1901,y=110,z=-137,distance=..16] run playsound tust:area.entered.cloudia music @s ~ ~ ~ 1 1
