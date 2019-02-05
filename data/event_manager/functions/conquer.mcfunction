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
scoreboard players operation $ConquerRateInt Global /= $10 Const
#演出
title @s times 20 100 20
title @s subtitle ["",{"text":"攻略率 : ","italic":true},{"score":{"name":"$ConquerNumber","objective":"Global"},"bold":true},{"text":"/50 (","italic":true},{"score":{"name":"$ConquerRateInt","objective":"Global"},"italic":true},{"text":".","italic":true},{"score":{"name":"$ConquerRateDecimal","objective":"Global"},"italic":true},{"text":"%)","italic":true}]
title @s title {"text":"島を攻略した！","color":"gold"}
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 30 force @a[tag=ShowParticles]
particle minecraft:instant_effect ~ ~1 ~ 1 1 1 0.1 90 force @a[tag=ShowParticles]
particle minecraft:entity_effect ~ ~1 ~ 1.5 1.5 1.5 2147000000 300 force @a[tag=ShowParticles]
playsound minecraft:entity.ender_dragon.death master @a[distance=..16] ~ ~ ~ 0.5 2

scoreboard players reset @s UseEnderEye
