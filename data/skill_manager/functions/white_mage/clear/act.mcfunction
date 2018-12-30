##############################
### キアリク発動
##############################

execute if score @s SupportSkill matches 42011 unless score @s SneakTime matches 1.. run function skill_manager:white_mage/clear/cure/level2
execute if score @s SupportSkill matches 42012 unless score @s SneakTime matches 1.. run function skill_manager:white_mage/clear/cure/level3
execute if score @s SupportSkill matches 42013 unless score @s SneakTime matches 1.. run function skill_manager:white_mage/clear/cure/level5

execute if score @s SupportSkill matches 42011 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/clear/cure/level2
execute if score @s SupportSkill matches 42012 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/clear/cure/level3
execute if score @s SupportSkill matches 42013 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/clear/cure/level5

###---演出---Start
playsound minecraft:entity.guardian.ambient_land master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.turtle.egg_hatch master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:item minecraft:turtle_egg ~ ~0.3 ~ 1.2 0.2 1.2 0.1 100 force @a[tag=ShowParticles]
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2f,Duration:10,Color:15597549}
###---演出---End
