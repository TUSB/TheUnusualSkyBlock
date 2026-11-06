#ダメージ表示
data modify storage popup: data set value {prefix:'" "',duration:0.7}
execute if score @s StoredDamage matches 0.. run function enemy:damage/show/health_minus
scoreboard players set _ _ -1
scoreboard players operation @s StoredDamage *= _ _
execute if score @s StoredDamage matches 1.. run function enemy:damage/show/health_plus
execute as @a[distance=..32,limit=1,sort=nearest] run function #util:distance
execute store result storage popup: data.size double 0.0001 run data get storage util: out 3333
execute anchored eyes positioned ^ ^ ^ run function #popup:
