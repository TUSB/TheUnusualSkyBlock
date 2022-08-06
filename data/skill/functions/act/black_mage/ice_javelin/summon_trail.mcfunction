
### アイスジャベリン軌跡を召喚

summon minecraft:armor_stand ~ ~ ~ {Small:false,NoGravity:true,Invisible:true,Marker:true,PortalCooldown:49,Tags:[Skill,IceJavelin,IceJavelinTrail,NativeTask],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Pose:{Head:[1f,1f,1f]},Fire:1000s}
function skill:damage/load
execute as @e[distance=..0.01,tag=IceJavelinTrail,tag=!Initialized] run function skill:damage/save
data modify entity @e[distance=..0.01,tag=IceJavelinTrail,tag=!Initialized,limit=1] PortalCooldown set from entity @s PortalCooldown
execute as @e[distance=..0.01,tag=IceJavelinTrail,tag=!Initialized] run function calc:set/random_pose_head
