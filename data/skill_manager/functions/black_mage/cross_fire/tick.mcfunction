##############################
### クロスファイア処理
##############################

###クロスファイアダメージ設定
execute if score @s ProjectileSkill matches 51021 run scoreboard players set $Damage Global 500
execute if score @s ProjectileSkill matches 51022 run scoreboard players set $Damage Global 1000
execute if score @s ProjectileSkill matches 51023 run scoreboard players set $Damage Global 2000
execute if score @s ProjectileSkill matches 51024 run scoreboard players set $Damage Global 4000

execute positioned ~-10 ~ ~ run scoreboard players operation @e[dx=19,tag=Mob] Damage > $Damage Global
execute positioned ~ ~-10 ~ run scoreboard players operation @e[dy=19,tag=Mob] Damage > $Damage Global
execute positioned ~ ~ ~-10 run scoreboard players operation @e[dz=19,tag=Mob] Damage > $Damage Global

###---演出---Start
particle minecraft:flame ~ ~ ~ 10 0.1 0.1 0 10 force
particle minecraft:flame ~ ~ ~ 0.1 10 0.1 0 10 force
particle minecraft:flame ~ ~ ~ 0.1 0.1 10 0 10 force
particle minecraft:flame ~ ~ ~ 2 0 0 0 5 force
particle minecraft:flame ~ ~ ~ 0 2 0 0 5 force
particle minecraft:flame ~ ~ ~ 0 0 2 0 5 force
particle dust 100000000 2 0 3.5 ^ ^ ^1 0 0 0 1 1 force
execute as @a[distance=..48] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1.414 0.2
###---演出---End
