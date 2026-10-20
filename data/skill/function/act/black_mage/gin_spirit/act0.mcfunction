
### ジン・スピリット発動

#アマスタ召喚
summon armor_stand ~ ~ ~ {Tags:[Skill,GinSpirit,NativeTask,TickingRequired,Initializing],Marker:true,NoGravity:true,Invulnerable:true,PortalCooldown:250,DisabledSlots:2039583,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:15083980}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:15083980}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:15083980}},count:1},{id:"minecraft:wither_skeleton_skull",count:1}],Pose:{Body:[180f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,120f],RightLeg:[0f,0f,-120f],Head:[0f,0f,0f]}}
execute as @e[tag=Initializing,limit=1] facing entity @a[limit=1,sort=nearest] eyes rotated ~ 0 run tp @s ~ ~0.1 ~ ~ ~
#スキルIDコピー
scoreboard players operation @e[tag=Initializing,limit=1] Level = _ Level

tag @e[tag=Initializing,limit=1] remove Initializing

function makeup:skill/act/black_mage/gin_spirit/act0
