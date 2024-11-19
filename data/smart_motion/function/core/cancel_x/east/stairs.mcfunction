###東(+X)

#stairs左上
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=east] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=south] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=west,shape=outer_left] align xyz positioned ~0.5 ~0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=north,shape=outer_right] align xyz positioned ~0.5 ~0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#stairs右上
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=east] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=north] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=west,shape=outer_right] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=bottom,facing=south,shape=outer_left] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#stairs左下
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=east] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=south] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=west,shape=outer_left] align xyz positioned ~0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=north,shape=outer_right] align xyz positioned ~0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#stairs右下
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=east] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=north] unless block ~0.45 ~ ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=west,shape=outer_right] align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
execute if block ~0.45 ~ ~ #minecraft:stairs[half=top,facing=south,shape=outer_left] align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
