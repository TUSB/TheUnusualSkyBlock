#天井をすり抜けないように上方向のMotionの上限補正

#stairs北東
execute if block ~ ~1 ~ #minecraft:stairs[facing=south] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=west] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=north,shape=outer_left] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=east,shape=outer_right] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#stairs南東
execute if block ~ ~1 ~ #minecraft:stairs[facing=north] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=west] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=south,shape=outer_right] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=east,shape=outer_left] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#stairs南西
execute if block ~ ~1 ~ #minecraft:stairs[facing=north] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=east] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=south,shape=outer_left] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=west,shape=outer_right] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#stairs北西
execute if block ~ ~1 ~ #minecraft:stairs[facing=south] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=east] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=north,shape=outer_right] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[facing=west,shape=outer_left] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
