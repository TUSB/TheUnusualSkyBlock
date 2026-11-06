#> ai:skill/damage/mob_scale
# Damageの値をMobScale倍する

execute store result score _ Calc run data get storage mob_data: Call.MobScale 100
function entity:damage/modify
