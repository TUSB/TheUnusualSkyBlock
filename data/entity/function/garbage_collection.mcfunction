#> entity:garbage_collection
##############################
### エンティティ削除
##############################

execute if entity @s[tag=CallOnDeath] at @s run function enemy:ai/call/trigger/death
# CallOnDeathで復活するならば削除処理は中止
execute if entity @s[tag=!Garbage] run return fail

execute if entity @s[tag=Parent] run function entity:kill_child
execute if entity @s[tag=LifeScouter] on passengers if entity @s[tag=LifeScouterText] run kill @s
data merge entity @s {Health:0f,Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}],Owner:[I;0,0,0,0]}
data remove entity @s CustomName
kill @s
