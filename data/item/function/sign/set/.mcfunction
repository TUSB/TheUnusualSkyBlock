#> item:sign/set/
##############################
### 看板設置
##############################

#設置できない場合はloot
execute unless block ~ ~ ~ air run loot spawn ~ ~ ~ kill @s
data remove entity @s DeathLootTable

#設置
execute if block ~ ~ ~ air run function item:sign/set/write

#kill
data merge entity @s {Health:0f,Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
data remove entity @s CustomName
execute in area:control_area run tp @s 8 0 8
kill @s
