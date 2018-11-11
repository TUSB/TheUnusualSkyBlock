##############################
### ジン・スピリット発動
##############################

summon armor_stand ~ ~ ~ {Tags:[GinSpirit,TickingTask,TickingRequired,Initializing],Marker:true,NoGravity:true,Invulnerable:true,PortalCooldown:600,DisabledSlots:2039583,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15083980}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15083980}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15083980}}},{id:"minecraft:wither_skeleton_skull",Count:1b}],Pose:{Body:[180f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,120f],RightLeg:[0f,0f,-120f],Head:[0f,0f,0f]}}
#tp @e[tag=Initializing,limit=1] ~ ~0.1 ~ facing entity @a[limit=1,sort=nearest]
execute as @e[tag=Initializing,limit=1] facing entity @a[limit=1,sort=nearest] eyes rotated ~ 0 run tp @s ~ ~0.1 ~ ~ ~

execute if score @s SupportSkill matches 52041 run tag @e[tag=Initializing,limit=1] add GinSpiritLv1
execute if score @s SupportSkill matches 52042 run tag @e[tag=Initializing,limit=1] add GinSpiritLv2
execute if score @s SupportSkill matches 52043 run tag @e[tag=Initializing,limit=1] add GinSpiritLv3

tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..16] ~ ~ ~ 1 1.6
particle minecraft:angry_villager ~ ~1 ~ 0.3 1 0.3 1 10 force
###---演出---End
