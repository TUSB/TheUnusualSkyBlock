#> effect:player_debuff/revival_sickness/apply
#
# 復活酔い追加処理

# 効果中なら効果時間2倍
scoreboard players set _ _ 1
scoreboard players set _ Calc 2
execute if score @s RevivalSicknessTimer matches 1.. run scoreboard players operation _ _ *= _ Calc

# 持続時間を設定 難易度で効果時間が変化（デバッグ:0s、ピクニック:2s、カジュアル:4s、エキスパート:8s）
execute if data storage main: difficult{world:"debug"} run scoreboard players set @s RevivalSicknessTimer 0
execute if data storage main: difficult{world:"picnic"} run scoreboard players set @s RevivalSicknessTimer 2
execute if data storage main: difficult{world:"casual"} run scoreboard players set @s RevivalSicknessTimer 4
execute if data storage main: difficult{world:"expert"} run scoreboard players set @s RevivalSicknessTimer 8

# マルチなら効果時間2倍
execute store result score @s _ if entity @a
execute if score @s _ matches 2.. run scoreboard players operation _ _ *= _ Calc

# 倍率を掛ける
scoreboard players operation @s RevivalSicknessTimer *= _ _

# 演出
function makeup:effect/player_debuff/revival_sickness/apply
