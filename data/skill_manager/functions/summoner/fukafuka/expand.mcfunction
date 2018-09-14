##############################
### ふかふか展開
##############################

###---演出---Start
playsound minecraft:entity.guardian.death master @a[distance=..48] ~ ~ ~ 4 2
playsound minecraft:entity.splash_potion.break master @a[distance=..48] ~ ~ ~ 4 1
###---演出---End

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",Tags:[Initializing,Cage,TickingTask],Duration:200}
execute store result entity @e[distance=..0.1,tag=Initializing,limit=1] Duration int 1 run scoreboard players get @s SkillAttribute
tag @e[distance=..0.1,tag=Initializing,limit=1] remove Initializing

kill @s
