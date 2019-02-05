##############################
### 島攻略処理
##############################

#ConquerNumber : 達成数(ポータルをはめた数)
scoreboard players operation $ConquerNumber Global += @s UseEnderEye
#ConquerRateInt : 達成率：整数
#ConquerRateDecimal : 達成率：少数第一位
scoreboard players operation $ConquerRateInt Global = $ConquerNumber Global
scoreboard players operation $ConquerRateInt Global *= $1000 Const
scoreboard players operation $ConquerRateInt Global /= $50 Const
scoreboard players operation $ConquerRateDecimal Global = $ConquerRateInt Global
scoreboard players operation $ConquerRateDecimal Global %= $10 Const
scoreboard players operation $ConquerRate Global /= $10 Const
#演出
title @s times 20 100 20
title @s subtitle ["",{"text":"攻略率 : ","italic":true},{"score":{"name":"$ConquerNumber","objective":"Global"},"bold":true},{"text":"/50 (","italic":true},{"score":{"name":"$ConquerRateInt","objective":"Global"},"italic":true},{"text":".","italic":true},{"score":{"name":"$ConquerRateDecimal","objective":"Global"},"italic":true},{"text":"%)","italic":true}]
title @s title {"text":"島を攻略した！","color":"gold"}
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 30 force
particle minecraft:instant_effect ~ ~1 ~ 1 1 1 0.1 90 force
summon minecraft:firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:true,Colors:[I;16774552],FadeColors:[I;16777215]},{Type:0b,Colors:[I;65407,16777215,16777215],FadeColors:[I;16777215]}]}}}}

playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.5 2

scoreboard players reset @s UseEnderEye
