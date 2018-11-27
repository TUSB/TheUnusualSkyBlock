##############################
### ジン・スピリット 回復
##############################

effect give @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] minecraft:instant_health 1 0
kill @s

###---演出---Start
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:heart ~ ~ ~ 1 0 1 1 10 force @a[tag=ShowParticles]
###---演出---End
