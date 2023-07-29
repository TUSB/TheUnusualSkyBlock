#ダメージ表示
data modify storage popup: data set value {duration:0.7}
execute if score @s StoredDamage matches 0.. run data modify storage popup: data.format set value '{"text":"","color":"#ff8600"}'
# execute if score @s StoredDamage matches 0.. run data modify storage popup: data.format set value '{"text":"","color":"#ffd300"}'
execute if score @s StoredDamage matches 0.. store result storage popup: data.value int 1 run scoreboard players get @s StoredDamage
scoreboard players set _ _ -1
scoreboard players operation @s StoredDamage *= _ _
execute if score @s StoredDamage matches 1.. run data modify storage popup: data.format set value '{"text":"","color":"#a8ff00"}'
execute if score @s StoredDamage matches 1.. store result storage popup: data.value int 1 run scoreboard players get @s StoredDamage
execute as @a[distance=..32,limit=1,sort=nearest] run function #util:distance
execute store result storage popup: data.size double 0.01 run data get storage util: out 25
function popup:
