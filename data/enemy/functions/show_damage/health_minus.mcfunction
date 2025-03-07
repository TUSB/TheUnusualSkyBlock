
data modify storage popup: data.format set value '{"text":"","color":"white"}'
execute store result storage popup: data.value int 1 run scoreboard players get @s StoredDamage
