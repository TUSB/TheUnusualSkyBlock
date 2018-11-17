##############################
### はやぶさ斬りタイマーセット
##############################

scoreboard players add $Timer Global 1
execute store result entity @s PortalCooldown int 1 run scoreboard players get $Timer Global
tag @s add FalconSlashed
tag @s add ObserveCooldown
tag @s[tag=NativeTask] add LockNativeTask
tag @s add NativeTask
