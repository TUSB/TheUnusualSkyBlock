#> entity:damage/apply/core/resolve_percentage_damage/mob

# 現在HPを取得
execute if data storage entity:_ damage.value{select:"current"} run scoreboard players operation _ HP = @s HP
# 最大HPを取得
execute if data storage entity:_ damage.value{select:"max"} run scoreboard players operation _ HP = @s HPMax
