##############################
### 黙想発動
##############################

effect give @s minecraft:regeneration 1 3
summon minecraft:armor_stand ~ ~ ~ {Tags:[MokusoPoint,CooldownRequired],PortalCooldown:21,Marker:true,NoGravity:true,Invisible:true,Invulnerable:true}
scoreboard players operation @s Mokuso = @s SupportSkill
scoreboard players remove @s Mokuso 22040

###---演出---Start
playsound minecraft:block.conduit.ambient master @a[distance=..16] ~ ~ ~ 1 
playsound minecraft:block.conduit.attack.target master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:nautilus ~ ~2 ~ 1.5 1 1.5 1 50 force
###---演出---End
