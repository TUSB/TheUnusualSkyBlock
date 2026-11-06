#> skill:damage/add/skill/weapon
#
# 武器のダメージをスキルに反映する
# ダメージ =武器ダメージ * effectiveness

# 数値をスコアに変換
execute store result score _ Attack run data get storage skill: damage.physical
execute store result score _ MagicAttack run data get storage skill: damage.magic
execute store result score _ UnreasonableAttack run data get storage skill: damage.unreasonable
execute store result score _ Calc run data get storage entity: damage.physical

# 武器のダメージに effectiveness / 100 をかけ、属性ごとのストレージに格納する
execute store result storage skill: damage.physical int 0.01 run scoreboard players operation _ Attack *= _ Calc
execute store result storage skill: damage.magic int 0.01 run scoreboard players operation _ MagicAttack *= _ Calc
execute store result storage skill: damage.unreasonable int 0.01 run scoreboard players operation _ UnreasonableAttack *= _ Calc
