###東(+X)

#このブロック
execute if block ~ ~ ~ #smart_motion:ignore_collision align xyz positioned ~-0.5 ~ ~ if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#このブロック 外向き逆さ階段の中央
execute if block ~ ~ ~ #minecraft:stairs[half=top] run function smart_motion:core/cancel_x/east/this_stairs
#当たり判定なし
execute if block ~0.45 ~ ~ #smart_motion:no_collision store success score @s sm.X run tp @s ~0.01 ~ ~
#slabs上半分
execute if block ~0.45 ~ ~ #minecraft:slabs[type=bottom] align xyz positioned ~ ~-0.5 ~ unless entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#slabs下半分
execute if block ~0.45 ~ ~ #minecraft:slabs[type=top] align xyz positioned ~ ~-0.5 ~ if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s sm.X run tp @s ~0.01 ~ ~
#stairs
execute if block ~0.45 ~ ~ #minecraft:stairs run function smart_motion:core/cancel_x/east/stairs
#trapdoors
execute if block ~0.45 ~ ~ #minecraft:trapdoors unless block ~0.45 ~ ~ #minecraft:trapdoors[facing=west,open=true] store success score @s sm.X run tp @s ~0.01 ~ ~
#doors
execute if block ~0.45 ~ ~ #minecraft:doors unless block ~0.45 ~ ~ #minecraft:doors[facing=east,open=false] unless block ~0.45 ~ ~ #minecraft:doors[facing=south,open=true,hinge=right] unless block ~0.45 ~ ~ #minecraft:doors[facing=north,open=true,hinge=left] store success score @s sm.X run tp @s ~0.01 ~ ~
