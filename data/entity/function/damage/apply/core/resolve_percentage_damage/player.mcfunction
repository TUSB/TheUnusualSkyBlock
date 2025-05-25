#> entity:damage/apply/core/resolve_percentage_damage/player

# 現在HPを取得
execute if data storage entity:_ damage.value{select:"current"} store result score _ HP run data get entity @s Health
# 最大HPを取得
execute if data storage entity:_ damage.value{select:"max"} store result score _ HP run attribute @s max_health get
