##############################
### ディバインシールド発動
##############################

###---演出---Start
playsound minecraft:block.conduit.activate master @a ~ ~ ~ 3 2
execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.03125 0.9453125 0.97265625 1 ~ ~ ~ 2 2 2 1 300 force @a[tag=ShowParticles]
###---演出---End
