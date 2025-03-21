#Function
# ランダムな数値で移行するターンを確定する
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
execute store result score _ Random run function calc:random
scoreboard players set _ _ 5
scoreboard players operation _ Random %= _ _
# TNT設置AI起動(Turn 3)
execute if score _ Random matches 0 run data modify storage mob_data: AI.ChangeTurn set value 2
# 不安定な爆発AI起動(Turn 2)
execute unless score _ Random matches 0 run data modify storage mob_data: AI.ChangeTurn set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
