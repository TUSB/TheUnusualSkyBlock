##############################
### 一閃処理
##############################

###一閃雪玉選択
scoreboard players operation @e[tag=Issen] ID -= @s ID
execute at @e[tag=Issen,scores={ID=0},limit=1] run tp @s ~ ~ ~
###モーション０が存在する場合、とどまる処理はなし
execute if score @s Issen matches 20 run kill @e[tag=Issen,scores={ID=0},limit=1,nbt={Motion:[0d]}]
execute if score @s Issen matches 20 run data merge entity @e[tag=Issen,scores={ID=0},limit=1] {Motion:[0d,0d,0d]}
scoreboard players operation @e[tag=Issen] ID += @s ID
###一閃tick消費
scoreboard players remove @s Issen 1
###ダメージ判定
###一閃ダメージ設定
execute if score @s ModeSkill matches 21041 if score @s Issen matches 20.. at @s run scoreboard players add @e[distance=..2.5,tag=Mob] Damage 50000
execute if score @s ModeSkill matches 21042 if score @s Issen matches 20.. at @s run scoreboard players add @e[distance=..2.5,tag=Mob] Damage 80000
execute if score @s ModeSkill matches 21043 if score @s Issen matches 20.. at @s run scoreboard players add @e[distance=..2.5,tag=Mob] Damage 120000
execute if score @s ModeSkill matches 21044 if score @s Issen matches 20.. at @s run scoreboard players add @e[distance=..2.5,tag=Mob] Damage 170000
###近接被ダメ回避
execute if score @s Issen matches 20.. at @s run effect give @e[distance=..2.5,tag=Mob] minecraft:weakness 1 127 true
###---演出---Start
execute if score @s Issen matches 20.. at @s as @e[distance=..2.5,tag=Mob] run data merge entity @s {Motion:[0d,0.5d,0d]}
execute if score @s Issen matches 20.. run playsound minecraft:entity.drowned.shoot player @a ~ ~ ~ 3 1.2
execute if score @s Issen matches 20.. run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 10 force
execute if score @s Issen matches 20.. run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 10 force
###---演出---End
