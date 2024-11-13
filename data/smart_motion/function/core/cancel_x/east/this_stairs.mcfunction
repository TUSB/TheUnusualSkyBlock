###東(+X) 外向き逆さ階段の中央

#stairs左
execute if block ~ ~ ~ #minecraft:stairs[facing=east,shape=outer_right] align xyz positioned ~-0.7 ~-0.5 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[facing=south,shape=outer_right] align xyz positioned ~-0.7 ~-0.5 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[facing=south,shape=outer_left] align xyz positioned ~-0.7 ~-0.5 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[facing=west,shape=outer_left] align xyz positioned ~-0.7 ~-0.5 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#stairs右
execute if block ~ ~ ~ #minecraft:stairs[facing=east,shape=outer_left] align xyz positioned ~-0.7 ~-0.5 ~0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[facing=north,shape=outer_right] align xyz positioned ~-0.7 ~-0.5 ~0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[facing=north,shape=outer_left] align xyz positioned ~-0.7 ~-0.5 ~0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~ ~ ~ #minecraft:stairs[facing=west,shape=outer_right] align xyz positioned ~-0.7 ~-0.5 ~0.7 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
