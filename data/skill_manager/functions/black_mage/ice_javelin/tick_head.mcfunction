##############################
### アイスジャベリン先頭処理
##############################

###---演出---Start
particle minecraft:firework ~ ~1.52 ~ 0.3 0.3 0.3 0.1 12 force
###---演出---End

scoreboard players operation $Id Global = @s ID

execute if entity @s[tag=!Reversed] run function skill_manager:black_mage/ice_javelin/tick_forward
execute if entity @s[tag=Reversed] run function skill_manager:black_mage/ice_javelin/tick_backward

playsound minecraft:block.glass.break master @a[distance=..32] ^ ^ ^ 3 2
summon minecraft:armor_stand ~ ~ ~ {Small:false,NoGravity:true,Invisible:true,Marker:true,PortalCooldown:49,Tags:[JavelinIce,TickingTask],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Pose:{Head:[1f,1f,1f]},Fire:1000s}
scoreboard players operation @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] SkillAttribute = @s SkillAttribute
scoreboard players operation @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] Decrementer = @s Decrementer
execute as @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] run function calc_manager:set/random_pose_head

tp @s ^ ^ ^1

execute unless block ~ ~1.52 ~ minecraft:air run kill @s
execute unless entity @a[distance=..32,limit=1] run kill @s
execute unless entity @a[distance=..28,limit=1] run tag @s add Reversed
execute if entity @a[distance=..3,limit=1] run kill @s[tag=Reversed]
