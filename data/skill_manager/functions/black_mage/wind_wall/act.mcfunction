##############################
### ウィンドウォール発動
##############################

###Lv1:0~1200 Lv2:10000~11200
execute if score @s SupportSkill matches 52091 run scoreboard players set @s WindWall 1200
execute if score @s SupportSkill matches 52092 run scoreboard players set @s WindWall 11200

###---演出---Start
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0
###---演出---End
