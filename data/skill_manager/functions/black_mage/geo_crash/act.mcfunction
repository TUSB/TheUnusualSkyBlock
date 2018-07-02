##############################
### ジオクラッシュ発動
##############################

tag @s add DelayedTask
tag @s add GeoCrash

execute as @e[distance=..20,tag=Mob] run data merge entity @s {Motion:[0d,-2d,0d]}

###---演出---Start
particle minecraft:block minecraft:dirt ~ ~ ~ 10 0.2 10 0 2000 force
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..48] ~ ~ ~ 4 0.5
###---演出---End
