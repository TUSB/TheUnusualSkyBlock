#> item:sign/click/break_gravel
# 範囲内の砂利をコントロールエリアへ輸送
clone ~-6 ~-1 ~-6 ~6 ~7 ~6 to area:control_area 1 20 1 filtered minecraft:gravel move
execute in area:control_area positioned 1 20 1 run fill ~ ~ ~ ~12 ~8 ~12 minecraft:air destroy

# アイテムを与える
execute in area:control_area run tp @e[type=item,x=0,y=16,z=0,dx=15,dy=15,dz=15] @s

function makeup:item/sign/common_firework.macro {color:8420731}
