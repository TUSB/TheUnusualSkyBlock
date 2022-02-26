##############################
### 黙想発動
##############################

effect give @s minecraft:regeneration 1 3
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,MokusoPoint,CooldownRequired],PortalCooldown:21,Marker:true,NoGravity:true,Invisible:true,Invulnerable:true}
scoreboard players operation @s Mokuso = _ Level
#演出
function makeup:skill/act/ninja/mokuso/act0
