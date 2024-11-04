#> job:exp/get
#ボーナス追加
execute unless score $World AllExp matches 0 as @a[distance=..50] run function job:exp/bonus
execute if score $World AllExp matches 0 run scoreboard players operation @a[distance=..50] _ = _ Exp

scoreboard players operation $World AllExp += _ Exp

#もしプレイヤーの総獲得経験値がワールドの総獲得経験値を超えるとき用
execute as @a[distance=..50] run function job:exp/over

#Expに追加
execute as @a[distance=..50] run scoreboard players operation @s Exp += @s _
execute as @a[distance=..50] run scoreboard players operation @s AllExp += @s _

#演出
function makeup:job/exp/get

#レベルアップ
execute as @a[distance=..50] at @s if score @s Exp >= @s RequiredExp run function job:level_up/
