#ダメージ表示
data modify storage popup: data set value {prefix:'" "',duration:0.7}
execute if score @s StoredDamage matches 0.. run function enemy:show_damage/health_minus
scoreboard players set _ _ -1
scoreboard players operation @s StoredDamage *= _ _
execute if score @s StoredDamage matches 1.. run function enemy:show_damage/health_plus
execute in area:control_area run loot replace block 2 2 2 container.0 loot enemy:weak_recover_element
execute in area:control_area run data modify storage popup: data.suffix set from block 2 2 2 Items[0].tag.display.Name
execute as @a[distance=..32,limit=1,sort=nearest] run function #util:distance
execute store result storage popup: data.size double 0.0001 run data get storage util: out 2500
function #popup:
