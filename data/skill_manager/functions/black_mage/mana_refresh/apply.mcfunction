##############################
### マナリフレッシュ適用
##############################

scoreboard players operation @s ManaRefresh > $ManaRefreshValue Global

###---演出---Start
playsound minecraft:block.conduit.ambient master @s ~ ~ ~ 1 2
playsound minecraft:block.conduit.ambient master @s ~ ~ ~ 1 2
playsound minecraft:block.conduit.ambient master @s ~ ~ ~ 1 2
particle minecraft:witch ~ ~1.8 ~ 0.7 0.7 0.7 0 40 force @a[tag=ShowParticles]
###---演出---End
