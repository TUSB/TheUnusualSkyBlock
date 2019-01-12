##############################
### 空気弱点
##############################

function entity_manager:mob_death

###---演出---Start
playsound minecraft:entity.player.breath master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.player.breath master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.hurt_drown master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:cloud ~ ~0.5 ~ 0 0.5 0 0.02 15 force @a[tag=ShowParticles]
execute anchored eyes run particle minecraft:dust 1 1 1 2 ^ ^ ^ 0.3 0.3 0.3 0.05 15 force @a[tag=ShowParticles]
###---演出---End
