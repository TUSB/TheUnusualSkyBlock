#> item:sign/click/upgrade_white/
##############################
### 白材強化の印板
##############################

#Y0～319に収まるよう3通りに分岐
execute positioned as @s if entity @s[y=-8,dy=10] run function item:sign/click/upgrade_white/y0_1
execute positioned as @s if entity @s[y=3,dy=300] run function item:sign/click/upgrade_white/y2_304
execute positioned as @s if entity @s[y=306,dy=19] run function item:sign/click/upgrade_white/y305_319

function makeup:item/sign/upgrade_white

setblock ~ ~ ~ minecraft:air
