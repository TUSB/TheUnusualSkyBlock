##############################
### 宿の印版
##############################

#設置スペースの検知
scoreboard players set $Inn Global 0
execute if blocks ~1 ~ ~-3 ~3 ~ ~3 -1923 3 -75 all if blocks ~ ~ ~1 ~ ~ ~3 -1923 3 -75 all if blocks ~ ~ ~-3 ~ ~ ~-1 -1923 3 -75 all if blocks ~-3 ~ ~-3 ~-1 ~ ~3 -1923 3 -75 all if blocks ~-3 ~1 ~-3 ~3 ~3 ~3 -1923 3 -75 all if blocks ~-3 ~4 ~-2 ~-2 ~4 ~2 -1923 3 -75 all if blocks ~-1 ~4 ~-3 ~1 ~4 ~3 -1923 3 -75 all if blocks ~2 ~4 ~-2 ~3 ~4 ~2 -1923 3 -75 all if blocks ~-3 ~5 ~-1 ~-2 ~5 ~1 -1923 3 -75 all if blocks ~-1 ~5 ~-3 ~-1 ~5 ~3 -1923 3 -75 all if blocks ~ ~5 ~-2 ~ ~5 ~2 -1923 3 -75 all if blocks ~1 ~5 ~-3 ~1 ~5 ~3 -1923 3 -75 all if blocks ~2 ~5 ~-1 ~3 ~5 ~1 -1923 3 -75 all if blocks ~-3 ~6 ~-1 ~-3 ~6 ~1 -1923 3 -75 all if blocks ~-1 ~6 ~-1 ~-1 ~6 ~1 -1923 3 -75 all if blocks ~1 ~6 ~-1 ~1 ~6 ~1 -1923 3 -75 all if blocks ~3 ~6 ~-1 ~3 ~6 ~1 -1923 3 -75 all if blocks ~-3 ~6 ~ ~3 ~6 ~ -1923 3 -75 all run scoreboard players set $Inn Global 1

#スペース不十分時
execute if score $Inn Global matches 0 run tellraw @s {"text":"スペースが足りない！"}
execute if score $Inn Global matches 0 run playsound minecraft:block.dispenser.fail master @a[distance=..16] ~ ~ ~ 1 1
execute if score $Inn Global matches 0 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.3 30 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~-3 ~ ~-3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~-3 ~ ~3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~3 ~ ~-3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~3 ~ ~3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~-3 ~6 ~-3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~-3 ~6 ~3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~3 ~6 ~-3 0 0 0 0 0 force
execute if score $Inn Global matches 0 run particle minecraft:barrier ~3 ~6 ~3 0 0 0 0 0 force

#設置
execute if score $Inn Global matches 1 run setblock ~ ~ ~ minecraft:air
execute if score $Inn Global matches 1 run clone -1923 13 -75 -1917 19 -69 ~-3 ~ ~-3 masked
execute if score $Inn Global matches 1 run playsound minecraft:entity.chicken.egg master @a[distance=..16] ~ ~ ~ 1 1
execute if score $Inn Global matches 1 run playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1
execute if score $Inn Global matches 1 run particle minecraft:happy_villager ~ ~3 ~ 3 3 3 0 100 force
execute if score $Inn Global matches 1 run particle minecraft:firework ~ ~3 ~ 3 3 3 0 100 force
