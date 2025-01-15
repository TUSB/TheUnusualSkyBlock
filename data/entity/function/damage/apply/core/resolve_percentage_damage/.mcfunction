#> entity:damage/apply/core/resolve_percentage_damage/
# 割合ダメージを実際のダメージへ計算する

# 計算に必要な数値をentity_typeに合わせて取得する
execute if entity @s[type=player] run function entity:damage/apply/core/resolve_percentage_damage/player
execute unless entity @s[type=player] run function entity:damage/apply/core/resolve_percentage_damage/mob

# 計算
execute store result score _ _ run data get storage entity:_ damage.value.percent 100
scoreboard players operation _ HP *= _ _
data modify storage entity:_ damage.value set value 0d
execute store result storage entity:_ damage.value double 0.01 run scoreboard players get _ HP
