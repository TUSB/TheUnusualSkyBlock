#Function
# 疑似慣性TP
    execute if score @s MP matches ..5 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.5 run tp @s ~ ~ ~ ~ 0
    execute if score @s MP matches 6 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.4 run tp @s ~ ~ ~ ~ 0
    execute if score @s MP matches 7 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.3 run tp @s ~ ~ ~ ~ 0
    execute if score @s MP matches 8 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.2 run tp @s ~ ~ ~ ~ 0
    execute if score @s MP matches 9 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.15 run tp @s ~ ~ ~ ~ 0
    execute if score @s MP matches 10 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.1 run tp @s ~ ~ ~ ~ 0
    execute if score @s MP matches 11 at @e[distance=..18,tag=SonicAAI] as @e[distance=..0.01,type=item_display] rotated ~ 20 positioned ^ ^ ^-0.05 run tp @s ~ ~ ~ ~ 0
    scoreboard players add @s MP 1
