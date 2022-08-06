##############################
### エンティティ削除
##############################

execute if entity @s[tag=CallOnDeath] at @s run function enemy:ai/call/trigger/death
execute if entity @s[tag=Parent] run function entity:kill_child
data merge entity @s[tag=Garbage] {Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
kill @s[tag=Garbage]
