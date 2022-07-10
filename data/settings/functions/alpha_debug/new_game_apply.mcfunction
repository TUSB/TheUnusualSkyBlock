#周回時

#島のスポナー、コンテナ設置
#黒曜石化、経験値と破壊回数をループ倍
setblock ~ ~ ~ obsidian
execute store result score _ Calc run data get entity @s AbsorptionAmount
execute store result entity @s AbsorptionAmount int 1 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity @s ArmorItems[0].tag.Experience
execute store result entity @s ArmorItems[0].tag.Experience int 1 run scoreboard players operation _ Calc *= _ _
