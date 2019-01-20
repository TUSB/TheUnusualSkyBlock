##############################
### ワイルドカード バナー召喚
##############################

execute if score @s WildCard matches -126 rotated ~ ~ run summon armor_stand ^ ^ ^3 {Tags:[Banner,Banner1,TickingTask,CooldownRequired,Initializing],PortalCooldown:170,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Small:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b}
execute if score @s WildCard matches -120 rotated ~-60 ~ run summon armor_stand ^ ^ ^3 {Tags:[Banner,Banner2,TickingTask,CooldownRequired,Initializing],PortalCooldown:170,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Small:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b}
execute if score @s WildCard matches -114 rotated ~-120 ~ run summon armor_stand ^ ^ ^3 {Tags:[Banner,Banner3,TickingTask,CooldownRequired,Initializing],PortalCooldown:170,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Small:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b}
execute if score @s WildCard matches -108 rotated ~-180 ~ run summon armor_stand ^ ^ ^3 {Tags:[Banner,Banner4,TickingTask,CooldownRequired,Initializing],PortalCooldown:170,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Small:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b}
execute if score @s WildCard matches -102 rotated ~-240 ~ run summon armor_stand ^ ^ ^3 {Tags:[Banner,Banner5,TickingTask,CooldownRequired,Initializing],PortalCooldown:170,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Small:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b}
execute if score @s WildCard matches -96 rotated ~-300 ~ run summon armor_stand ^ ^ ^3 {Tags:[Banner,Banner6,TickingTask,CooldownRequired,Initializing],PortalCooldown:170,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Small:1b,NoGravity:1b,NoBasePlate:1b,Invulnerable:1b}

#効果決定＆紐づけ
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
execute as @e[tag=Initializing,limit=1] run function skill_manager:black_mage/wild_card/roll/paint

tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:block.note_block.pling master @a[distance=..16] ~ ~ ~ 0.5 1
###---演出---End
