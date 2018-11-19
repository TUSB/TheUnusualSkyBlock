##############################
### レビテト毎tick処理
##############################

execute store result score $PosY Global run data get entity @s Pos[1] 100

scoreboard players set $LevitateLevel Global -5

scoreboard players set $Detect Global 0
execute store success score $Detect Global if block ~0.41 ~-2.00 ~0.41 minecraft:air if block ~0.41 ~-2.00 ~-0.41 minecraft:air if block ~-0.41 ~-2.00 ~0.41 minecraft:air if block ~-0.41 ~-2.00 ~-0.41 minecraft:air
execute if score $Detect Global matches 0 if score $PosY Global matches 200..25800 run scoreboard players set $LevitateLevel Global -3

scoreboard players set $Detect Global 0
execute store success score $Detect Global if block ~0.41 ~-1.00 ~0.41 minecraft:air if block ~0.41 ~-1.00 ~-0.41 minecraft:air if block ~-0.41 ~-1.00 ~0.41 minecraft:air if block ~-0.41 ~-1.00 ~-0.41 minecraft:air
execute if score $Detect Global matches 0 if score $PosY Global matches 100..25700 run scoreboard players set $LevitateLevel Global -1

scoreboard players set $Detect Global 0
execute store success score $Detect Global if block ~0.41 ~-0.20 ~0.41 minecraft:air if block ~0.41 ~-0.20 ~-0.41 minecraft:air if block ~-0.41 ~-0.20 ~0.41 minecraft:air if block ~-0.41 ~-0.20 ~-0.41 minecraft:air
execute if score $Detect Global matches 0 if score $PosY Global matches 20..25620 run scoreboard players set $LevitateLevel Global 1

scoreboard players set $Detect Global 0
execute store success score $Detect Global if block ~0.41 ~ ~0.41 minecraft:air if block ~0.41 ~ ~-0.41 minecraft:air if block ~-0.41 ~ ~0.41 minecraft:air if block ~-0.41 ~ ~-0.41 minecraft:air
execute if score $Detect Global matches 0 if score $PosY Global matches 0..25600 run scoreboard players set $LevitateLevel Global 3

scoreboard players set $Detect Global 0
execute store success score $Detect Global if block ~0.41 ~0.40 ~0.41 minecraft:air if block ~0.41 ~0.40 ~-0.41 minecraft:air if block ~-0.41 ~0.40 ~0.41 minecraft:air if block ~-0.41 ~0.40 ~-0.41 minecraft:air
execute if score $Detect Global matches 0 if score $PosY Global matches -40..25560 run scoreboard players set $LevitateLevel Global 5

execute if score $LevitateLevel Global matches 3.. if block ~ ~-1 ~ minecraft:air run scoreboard players add $LevitateLevel Global 4
execute if score $LevitateLevel Global matches 7.. if block ~ ~-1 ~ minecraft:air run scoreboard players operation $LevitateLevel Global *= $-1 Const
execute if score $LevitateLevel Global matches ..-7 if block ~ ~-1 ~ minecraft:air run scoreboard players add $LevitateLevel Global 6

tag @s[tag=LevitateJump,nbt=!{ActiveEffects:[{Id:25b}]}] remove LevitateJump
execute if entity @s[tag=LevitateJump] run scoreboard players reset $LevitateLevel Global

execute if score $LevitateLevel Global matches -5 run effect clear @s[nbt=!{ActiveEffects:[{Id:25b,Amplifier:-6b}]}] minecraft:levitation
execute if score $LevitateLevel Global matches -5 run effect give @s minecraft:levitation 1 250

execute if score $LevitateLevel Global matches -3 run effect clear @s[nbt=!{ActiveEffects:[{Id:25b,Amplifier:-4b}]}] minecraft:levitation
execute if score $LevitateLevel Global matches -3 run effect give @s minecraft:levitation 1 252

execute if score $LevitateLevel Global matches -1 run effect clear @s[nbt=!{ActiveEffects:[{Id:25b,Amplifier:-2b}]}] minecraft:levitation
execute if score $LevitateLevel Global matches -1 run effect give @s minecraft:levitation 1 254

execute if score $LevitateLevel Global matches 1 run effect clear @s[nbt=!{ActiveEffects:[{Id:25b,Amplifier:0b}]}] minecraft:levitation
execute if score $LevitateLevel Global matches 1 run effect give @s minecraft:levitation 1 0

execute if score $LevitateLevel Global matches 3 run effect clear @s[nbt=!{ActiveEffects:[{Id:25b,Amplifier:2b}]}] minecraft:levitation
execute if score $LevitateLevel Global matches 3 run effect give @s minecraft:levitation 1 2

execute if score $LevitateLevel Global matches 5 run effect clear @s[nbt=!{ActiveEffects:[{Id:25b,Amplifier:4b}]}] minecraft:levitation
execute if score $LevitateLevel Global matches 5 run effect give @s minecraft:levitation 1 4

effect give @s minecraft:slow_falling 1 0

scoreboard players remove @s Levitate 1

###---演出---Start
execute if score @s Levitate matches 200.. run particle minecraft:cloud ~ ~-0.1 ~ 0.4 0 0.4 0.1 3 force
execute if score @s Levitate matches 100..199 run particle minecraft:cloud ~ ~-0.1 ~ 0.4 0 0.4 0.1 2 force
execute if score @s Levitate matches 20..99 run particle minecraft:cloud ~ ~-0.1 ~ 0.4 0 0.4 0.1 1 force
execute if score @s Levitate matches 200.. run playsound minecraft:entity.phantom.flap master @s ~ ~64 ~ 8 0.5
execute if score @s Levitate matches 100..199 run playsound minecraft:entity.phantom.flap master @s ~ ~64 ~ 8 1
execute if score @s Levitate matches 20..99 run playsound minecraft:entity.phantom.flap master @s ~ ~64 ~ 8 2
execute if blocks ~-2 ~-1 ~-2 ~2 ~-1 ~2 1 0 1 all run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:water[level=1] replace minecraft:water
fill ~-1 ~-1 ~-1 ~1 ~ ~1 minecraft:air replace minecraft:fire
###---演出---End

execute if score @s Levitate matches ..0 run effect clear @s minecraft:levitation
execute if score @s Levitate matches ..0 run effect clear @s minecraft:slow_falling
execute if score @s Levitate matches ..0 run scoreboard players reset @s Levitate
