#> skill:damage/add/skill/weapon
#
# 武器のダメージをスキルに反映する
# ダメージ =（武器ダメージ）* (skill: Damage.effectiveness)

# 数値をスコアに変換
execute store result score _ _ run data get storage skill: damage.effectiveness
execute store result score _ Calc run data get storage entity: damage.physical

# 武器のダメージに effectiveness / 100 をかけ、属性ごとのストレージに格納する
execute if data storage skill: {damage.effectiveness.attribute:physical} store result storage skill: Damage.physical int 0.01 run scoreboard players operation _ _ *= _ Calc
execute if data storage skill: {damage.effectiveness.attribute:magic} store result storage skill: Damage.magic int 0.01 run scoreboard players operation _ _ *= _ Calc
execute if data storage skill: {damage.effectiveness.attribute:unreasonable} store result storage skill: Damage.unreasonable int 0.01 run scoreboard players operation _ _ *= _ Calc
