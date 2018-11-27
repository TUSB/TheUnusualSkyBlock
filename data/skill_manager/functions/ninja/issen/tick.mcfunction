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
execute if score @s ModeSkill matches 21041 if score @s Issen matches 20.. at @s run scoreboard players set $Damage Global 220000
execute if score @s ModeSkill matches 21042 if score @s Issen matches 20.. at @s run scoreboard players set $Damage Global 400000
execute if score @s ModeSkill matches 21043 if score @s Issen matches 20.. at @s run scoreboard players set $Damage Global 1250000
execute if score @s ModeSkill matches 21044 if score @s Issen matches 20.. at @s run scoreboard players set $Damage Global 2000000
function skill_manager:damage_modifier/apply
execute if score @s Issen matches 20.. at @s run scoreboard players operation @e[distance=..2.5,tag=Mob] Damage > $Damage Global
###近接被ダメ回避
execute if score @s Issen matches 20.. at @s run effect give @e[distance=..2.5,tag=Mob] minecraft:weakness 1 127 true
###---演出---Start
execute if score @s Issen matches 20.. at @s as @e[distance=..2.5,tag=Mob] run data merge entity @s {Motion:[0d,0.5d,0d]}
execute if score @s Issen matches 20.. at @s as @e[distance=..2.5,tag=Mob] run particle minecraft:item minecraft:nether_wart ~ ~1 ~ 0.3 0.5 0.3 0.2 50 force @a[tag=ShowParticles]
execute if score @s Issen matches 20.. at @s as @e[distance=..2.5,tag=Mob] run particle minecraft:item minecraft:redstone_block ~ ~1 ~ 0.1 0.1 0.1 0.2 15 force @a[tag=ShowParticles]
execute if score @s Issen matches 20.. at @s as @e[distance=..2.5,tag=Mob] run playsound minecraft:entity.wither.shoot master @a[distance=..16] ~ ~ ~ 0.6 2
execute if score @s Issen matches 20.. at @s as @e[distance=..2.5,tag=Mob] run playsound minecraft:block.bubble_column.upwards_inside master @a[distance=..16] ~ ~ ~ 3 2
execute if score @s Issen matches 20.. run playsound minecraft:entity.drowned.shoot player @a ~ ~ ~ 3 1.2
execute if score @s Issen matches 20.. run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[tag=ShowParticles]
execute if score @s Issen matches 20.. run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 10 force @a[tag=ShowParticles]
###---演出---End
