##############################
### アイスジャベリン処理
##############################

###アイスジャベリンダメージ設定
execute if score @s ProjectileSkill matches 51011 at @s run scoreboard players add @e[distance=..4.5,tag=Mob] Damage 500
execute if score @s ProjectileSkill matches 51012 at @s run scoreboard players add @e[distance=..4.5,tag=Mob] Damage 1000
execute if score @s ProjectileSkill matches 51013 at @s run scoreboard players add @e[distance=..4.5,tag=Mob] Damage 2000
execute if score @s ProjectileSkill matches 51014 at @s run scoreboard players add @e[distance=..4.5,tag=Mob] Damage 4000

###---演出---Start
particle minecraft:block minecraft:white_wool ~ ~ ~ 0.2 0.2 0.2 0 7 force
particle minecraft:item minecraft:blue_ice ~ ~ ~ 0.2 0.2 0.2 0.15 7 force
particle dust 0.3 0.7 100000000 2 ~ ~ ~ 0 0 0 1 1 force
playsound minecraft:block.glass.break master @a[distance=..48] ~ ~ ~ 3 2
###---演出---End
