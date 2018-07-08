##############################
### 黙想発動
##############################

effect give @s minecraft:regeneration 1 3
summon minecraft:armor_stand ~ ~ ~ {Tags:[MokusoPoint,CooldownRequired],PortalCooldown:21,Marker:true,NoGravity:true,Invisible:true,Invulnerable:true}
scoreboard players operation @s Mokuso = @s SupportSkill
scoreboard players remove @s Mokuso 22040

###---演出---Start
###---演出---End
