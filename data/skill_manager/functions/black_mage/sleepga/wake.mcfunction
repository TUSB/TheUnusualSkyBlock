##############################
### スリプガ起きた処理
##############################

data merge entity @s {NoAI:false}

###---演出---Start
playsound minecraft:entity.guardian.hurt_land master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:enchant.thorns.hit master @a[distance=..16] ~ ~ ~ 1 1.5
execute anchored eyes run particle minecraft:enchanted_hit ^ ^ ^ 0 0 0 0.5 10 force @a[tag=ShowParticles]
###---演出---End

scoreboard players reset @s SleepgaTime
