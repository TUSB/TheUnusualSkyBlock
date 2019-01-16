##############################
### モブ呼び出し
##############################

function enemy_manager:spawn/allocate_dimension

###---演出---Start
#playsound minecraft:entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 1
#execute anchored eyes run particle minecraft:cloud ^ ^ ^ 0 0 0 0.15 10 force @a[tag=ShowParticles]
###---演出---End
