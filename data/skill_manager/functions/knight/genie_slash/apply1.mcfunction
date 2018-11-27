##############################
### 魔人斬り１
##############################

###---演出---Start
playsound item.trident.riptide_3 master @a[distance=..16] ~ ~ ~ 0.7 0.9
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 5 2 force @a[tag=ShowParticles]
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0 30
###---演出---End

effect give @s minecraft:weakness 30 100
tp @s ~ ~-2 ~
data merge entity @s {Motion:[0d,1.5d,0d]}
scoreboard players set $Damage Global 500000
function skill_manager:damage_modifier/apply
scoreboard players operation @s Damage > $Damage Global
effect give @s minecraft:slow_falling 1 0
