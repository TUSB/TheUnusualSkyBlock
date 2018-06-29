##############################
### クロスファイア処理
##############################

###クロスファイアダメージ設定
execute if score @s ProjectileSkill matches 51011 run scoreboard players set $Damage Global 500
execute if score @s ProjectileSkill matches 51012 run scoreboard players set $Damage Global 1000
execute if score @s ProjectileSkill matches 51013 run scoreboard players set $Damage Global 2000
execute if score @s ProjectileSkill matches 51014 run scoreboard players set $Damage Global 4000

execute positioned ~-10 ~ ~ run scoreboard players operation @e[dx=10,tag=Mob] Damage += $Damage Global
execute positioned ~ ~-10 ~ run scoreboard players operation @e[dy=10,tag=Mob] Damage += $Damage Global
execute positioned ~ ~ ~-10 run scoreboard players operation @e[dz=10,tag=Mob] Damage += $Damage Global

###---演出---Start
particle minecraft:flame ~ ~ ~ 10 0.1 0.1 0 10 force
particle minecraft:flame ~ ~ ~ 0.1 10 0.1 0 10 force
particle minecraft:flame ~ ~ ~ 0.1 0.1 10 0 10 force
execute as @a[distance=..48] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1.414
###---演出---End
