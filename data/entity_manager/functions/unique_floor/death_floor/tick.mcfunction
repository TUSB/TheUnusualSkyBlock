##############################
### 即死床処理
##############################

execute store result score $GameTime Global run time query gametime

scoreboard players operation $GameTime Global -= @s GameTime
#死亡処理 マジックシールドで無効化
execute if score $GameTime Global matches 40..59 unless score @s MagicShield matches ..999 run function entity_manager:unique_floor/death_floor/death
execute if score $GameTime Global matches 60.. run scoreboard players operation @s GameTime += $GameTime Global

###---演出---Start
execute rotated as @e[limit=1,sort=random] rotated ~ 0 run particle minecraft:dust -0.5 0 -1 1.5 ^ ^0.6 ^1.4 0.15 0.8 0.15 0 10 force @a[tag=ShowParticles]
particle minecraft:witch ~ ~ ~ 0.4 0 0.4 1 10 force @a[tag=ShowParticles]
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.3 0.8
execute if score @s MagicShield matches ..999 run playsound minecraft:block.anvil.land master @a[distance=..16] ~ ~ ~ 0.5 2
###---演出---End

