##############################
### parabora移動処理
##############################

execute store result score $X Local run data get entity @s Pos[0] 1000
execute store result score $Y Local run data get entity @s Pos[1] 1000
execute store result score $Z Local run data get entity @s Pos[2] 1000

scoreboard players operation $X Local += @s ParabolicX
scoreboard players operation $Y Local += @s ParabolicY
scoreboard players operation $Z Local += @s ParabolicZ

scoreboard players operation $D Local = @s ParabolicT
scoreboard players operation $D Local *= $2 Const
scoreboard players add $D Local 1
scoreboard players operation $D Local *= @s ParabolicD
scoreboard players operation $Y Local -= $D Local

scoreboard players add @s ParabolicT 1

execute store result entity @s Pos[0] double 0.001 run scoreboard players get $X Local
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $Y Local
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $Z Local
