#> calc:set/random_rotation
### 向きをランダムにする

execute store result score _ Random run function calc:random
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get _ Random
execute store result score _ Random run function calc:random
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get _ Random
