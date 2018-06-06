##############################
### 一閃処理
##############################

###一閃雪玉選択
scoreboard players operation @e[tag=Issen] ID -= @s ID
execute at @e[tag=Issen,scores={ID=0},limit=1] run tp @s ~ ~ ~
execute if score @s Issen matches 20 run kill @e[tag=Issen,scores={ID=0},limit=1,nbt={Motion:[0d]}]
execute if score @s Issen matches 20 run data merge entity @e[tag=Issen,scores={ID=0},limit=1] {Motion:[0d,0d,0d]}
scoreboard players operation @e[tag=Issen] ID += @s ID
###一閃tick消費
scoreboard players remove @s Issen 1
###ダメージ判定
execute if score @s Issen matches 19.. at @s run scoreboard players add @e[distance=..2.5,tag=Mob] Damage 10000
execute if score @s Issen matches 19.. at @s run effect give @e[distance=..2.5,tag=Mob] minecraft:weakness 1 127 true
execute if score @s Issen matches 19.. at @s as @e[distance=..2.5,tag=Mob] at @s run tp ~ ~0.5 ~
execute if score @s Issen matches 19.. at @s as @e[distance=..2.5,tag=Mob] run data merge entity @s {Motion:[0d,0.5d,0d]}
###演出
execute if score @s Issen matches 20.. run playsound minecraft:entity.drowned.shoot player @a ~ ~ ~ 3 1.2
