#Function
# 初期設定
    scoreboard players set @s MP 0
    tp @s ~ ~ ~ ~ 0
    execute if entity @e[distance=..0.5,type=area_effect_cloud,tag=StarDust] run data modify storage mob_data: Tags append value "Garbage"
