#> makeup:area/key_block/break
# 鍵差し込み演出
execute positioned ^ ^ ^1 if entity @s[x_rotation=90] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run summon item_display ~ ~ ~ {Tags:[KeyBlock.Makeup],transformation:{left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,1f],angle:0.7854f},translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},interpolation_duration:2}
execute positioned ^ ^ ^1 if entity @s[x_rotation=90] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run data merge entity @e[tag=KeyBlock.Makeup,distance=..0.01,limit=1] {transformation:{translation:[0f,0.5f,0f]},start_interpolation:0}
execute positioned ^ ^ ^1 if entity @s[x_rotation=-90] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run summon item_display ~ ~ ~ {Tags:[KeyBlock.Makeup],transformation:{left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,1f],angle:-2.356f},translation:[0f,0.5f,0f],scale:[1f,1f,1f]},interpolation_duration:2}
execute positioned ^ ^ ^1 if entity @s[x_rotation=-90] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run data merge entity @e[tag=KeyBlock.Makeup,distance=..0.01,limit=1] {transformation:{translation:[0f,-0.5f,0f]},start_interpolation:0}
execute positioned ^ ^ ^1 if entity @s[y_rotation=180,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run summon item_display ~ ~ ~ {Tags:[KeyBlock.Makeup],transformation:{left_rotation:{axis:[0f,1f,0f],angle:-1.571f},right_rotation:{axis:[0f,0f,1f],angle:-0.7854f},translation:[0f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:2}
execute positioned ^ ^ ^1 if entity @s[y_rotation=180,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run data merge entity @e[tag=KeyBlock.Makeup,distance=..0.01,limit=1] {transformation:{translation:[0f,0f,0.5f]},start_interpolation:0}
execute positioned ^ ^ ^1 if entity @s[y_rotation=0,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run summon item_display ~ ~ ~ {Tags:[KeyBlock.Makeup],transformation:{left_rotation:{axis:[0f,1f,0f],angle:1.571},right_rotation:{axis:[0f,0f,1f],angle:-0.7854f},translation:[0f,0f,0.5f],scale:[1f,1f,1f]},interpolation_duration:2}
execute positioned ^ ^ ^1 if entity @s[y_rotation=0,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run data merge entity @e[tag=KeyBlock.Makeup,distance=..0.01,limit=1] {transformation:{translation:[0f,0f,-0.5f]},start_interpolation:0}
execute positioned ^ ^ ^1 if entity @s[y_rotation=90,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run summon item_display ~ ~ ~ {Tags:[KeyBlock.Makeup],transformation:{left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[0f,0f,1f],angle:-0.7854f},translation:[-0.5f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:2}
execute positioned ^ ^ ^1 if entity @s[y_rotation=90,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run data merge entity @e[tag=KeyBlock.Makeup,distance=..0.01,limit=1] {transformation:{translation:[0.5f,0f,0f]},start_interpolation:0}
execute positioned ^ ^ ^1 if entity @s[y_rotation=-90,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run summon item_display ~ ~ ~ {Tags:[KeyBlock.Makeup],transformation:{left_rotation:{axis:[0f,1f,0f],angle:3.141f},right_rotation:{axis:[0f,0f,1f],angle:-0.7854f},translation:[0.5f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:2}
execute positioned ^ ^ ^1 if entity @s[y_rotation=-90,x_rotation=0] at @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] run data merge entity @e[tag=KeyBlock.Makeup,distance=..0.01,limit=1] {transformation:{translation:[-0.5f,0f,0f]},start_interpolation:0}

# 鍵アイテム表示
execute positioned ^ ^ ^1 run data modify entity @e[tag=KeyBlock.Makeup,distance=..1,limit=1,sort=nearest] item set from storage area: key_block.key_item

# キーブロック縮小演出
execute positioned ^ ^ ^1 run data merge entity @e[tag=KeyBlock.Block,distance=..1,limit=1,sort=nearest] {Tags:[KeyBlock.Makeup],transformation:{scale:[0f,0f,0f]},start_interpolation:3,interpolation_duration:8}


particle minecraft:end_rod ^-0.5 ^-0.5 ^ ^-1000000 ^-1000000 ^ 0.000000075 0 force
particle minecraft:end_rod ^ ^-0.5 ^ ^ ^-1000000 ^ 0.000000075 0 force
particle minecraft:end_rod ^0.5 ^-0.5 ^ ^1000000 ^-1000000 ^ 0.000000075 0 force
particle minecraft:end_rod ^-0.5 ^ ^ ^-1000000 ^ ^ 0.000000075 0 force
particle minecraft:end_rod ^ ^ ^ ^ ^ ^ 0 0 force
particle minecraft:end_rod ^0.5 ^ ^ ^1000000 ^ ^ 0.000000075 0 force
particle minecraft:end_rod ^-0.5 ^0.5 ^ ^-1000000 ^1000000 ^ 0.000000075 0 force
particle minecraft:end_rod ^ ^0.5 ^ ^ ^1000000 ^ 0.000000075 0 force
particle minecraft:end_rod ^0.5 ^0.5 ^ ^1000000 ^1000000 ^ 0.000000075 0 force

playsound minecraft:block.glass.break block @a[distance=..16] ~ ~ ~ 2 1.5
playsound minecraft:block.portal.trigger block @a[distance=..16] ~ ~ ~ 0.3 2
