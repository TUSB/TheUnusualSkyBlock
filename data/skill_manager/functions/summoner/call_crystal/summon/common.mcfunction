##############################
### クリスタル召喚共通
##############################

summon minecraft:shulker ~ ~ ~ {NoAI:true,Invulnerable:true,Silent:true,Peek:56b,DeathTime:19s,PortalCooldown:120,Tags:[Initializing]}
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = @s ModeSkill
execute if score @s ModeSkill matches 61072 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:160}
execute if score @s ModeSkill matches 61073 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:200}
execute if score @s ModeSkill matches 61092 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:160}
execute if score @s ModeSkill matches 61093 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:200}

###---演出---Start
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
###---演出---Start
