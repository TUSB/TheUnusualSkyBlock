##############################
### つんつん適用
##############################

data merge entity @s {Tags:[Sicced,CooldownRequired]}
execute store result entity @s PortalCooldown int 1 run scoreboard players get $LifeTime Global
execute if entity @s[type=minecraft:wolf] at @s store result entity @s Attributes[6].Base double 0.02 run data get entity @s Attributes[6].Base 100
execute store result entity @s Attributes[2].Base double 0.015 run data get entity @s Attributes[2].Base 100

###---演出---Start
execute anchored eyes run particle minecraft:angry_villager ^ ^ ^ 0.1 0.1 0.1 0 10 force
execute anchored eyes run particle minecraft:lava ^ ^-0.5 ^ 0.5 0.5 0.5 0 15 force
###---演出---End
