
execute store result score _ Exp run clear @s nether_star

#ボーナス追加
execute unless score $World AllExp matches 0 as @a run function job:exp/bonus
execute if score $World AllExp matches 0 run scoreboard players operation @a _ = _ Exp

scoreboard players operation $World AllExp += _ Exp

#もしプレイヤーの総獲得経験値がワールドの総獲得経験値を超えるとき用
execute as @a run function job:exp/over

#Expに追加
execute as @a run scoreboard players operation @s Exp += @s _
execute as @a run scoreboard players operation @s AllExp += @s _

#演出
execute as @a run function makeup:job/exp/get
