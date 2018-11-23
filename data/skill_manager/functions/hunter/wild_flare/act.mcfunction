##############################
### ワイルドフレア発動
##############################

###矢修正
execute if score @s ModeSkill matches 31061 run scoreboard players set $Damage Global 2500
execute if score @s ModeSkill matches 31062 run scoreboard players set $Damage Global 8200
execute if score @s ModeSkill matches 31063 run scoreboard players set $Damage Global 15000
function calc_manager:apply_damage_modifier

scoreboard players operation @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] SkillAttribute = $Damage Global

execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run data merge entity @s {PortalCooldown:2,Tags:[WildFlareSeed,CooldownRequired]}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 1
###---演出---End
