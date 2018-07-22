##############################
### つんつん適用
##############################

data merge entity @s {Tags:[Sicced,CooldownRequired]}
execute store result entity @s PortalCooldown int 1 run scoreboard players get $LifeTime Global
execute if entity @s[type=minecraft:snow_golem] at @s run scoreboard players set @s SkillAttribute 1000
execute if entity @s[type=minecraft:iron_golem] at @s run scoreboard players set @s SkillAttribute 10000
execute if entity @s[type=minecraft:wolf] at @s run scoreboard players set @s SkillAttribute 50000

###---演出---Start
execute anchored eyes positioned ^ ^ ^ run particle minecraft:heart ~ ~ ~ 0.1 0.1 0.1 0 10 force
###---演出---End
