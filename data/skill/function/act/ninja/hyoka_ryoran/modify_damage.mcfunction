#> skill:act/ninja/hyoka_ryoran/modify_damage
#
# 氷華繚乱 ダメージ補正

# ダメージ値を取得
execute store result score @s _ run data get storage skill: damage.magic

# 跳躍補正=1+(@s Choyaku)/50
scoreboard players set _ _ 2
scoreboard players set _ Calc 100
scoreboard players operation _ _ *= @s Choyaku
scoreboard players operation _ _ += _ Calc

# 風切発動中でなければダメージを反映して終了
execute unless score @s Kazakiri matches 1.. run return run execute store result storage skill: damage.magic int 0.01 run scoreboard players operation @s _ *= _ _

# 風切補正=1.2
scoreboard players set @s Calc 12
scoreboard players operation _ _ *= @s Calc

execute store result storage skill: damage.magic int 0.001 run scoreboard players operation @s _ *= _ _
