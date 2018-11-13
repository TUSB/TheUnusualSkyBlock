##############################
### スリプガ催眠
##############################

scoreboard players set @s SleepgaTime 20
data merge entity @s {NoAI:true,HurtByTimestamp:0}

###---演出---Start
playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 0.5 2
summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",Radius:1f,Duration:20,Color:2512340}
###---演出---End
