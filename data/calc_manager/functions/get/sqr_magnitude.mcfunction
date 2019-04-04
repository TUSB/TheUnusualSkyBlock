##############################
### 距離の二乗を取得する
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set $SqrMagnitude Global to the squared magnitude of the distance between [Source] and [Destination].

execute store result score $X Local run data get entity @s Pos[0] 1000
execute store result score $Y Local run data get entity @s Pos[1] 1000
execute store result score $Z Local run data get entity @s Pos[2] 1000

execute in overworld run tp 0-0-0-0-30 ~ ~ ~

execute store result score $X2 Local run data get entity 0-0-0-0-30 Pos[0] 1000
execute store result score $Y2 Local run data get entity 0-0-0-0-30 Pos[1] 1000
execute store result score $Z2 Local run data get entity 0-0-0-0-30 Pos[2] 1000

execute in overworld run tp 0-0-0-0-30 0.0 3.0 0.0

scoreboard players operation $X Local -= $X2 Local
scoreboard players operation $Y Local -= $Y2 Local
scoreboard players operation $Z Local -= $Z2 Local

scoreboard players operation $X Local *= $X Local
scoreboard players operation $Y Local *= $Y Local
scoreboard players operation $Z Local *= $Z Local

scoreboard players operation $SqrMagnitude Global = $X Local
scoreboard players operation $SqrMagnitude Global += $Y Local
scoreboard players operation $SqrMagnitude Global += $Z Local

### ログ
# tellraw @a ["calc_manager:get/sqr_magnitude : ",{"score":{"name":"$SqrMagnitude","objective":"Global"}}]
