##############################
### エンティティ削除
##############################

execute if entity @s[tag=CallOnDeath] at @s run function enemy:ai/call/trigger/death
execute if entity @s[tag=Parent] run function entity:kill_child
execute if entity @s[tag=Garbage,tag=LifeScouter] on passengers if entity @s[tag=LifeScouterText] run kill @s
data merge entity @s[tag=Garbage] {Health:0f,Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}],Owner:[I;0,0,0,0]}
data remove entity @s[tag=Garbage] CustomName
kill @s[tag=Garbage]
