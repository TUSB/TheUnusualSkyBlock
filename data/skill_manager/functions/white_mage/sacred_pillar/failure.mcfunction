##############################
### セイクリッドピラーダメージなし
##############################

###---演出---Start
execute as @a[distance=0..] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 2 0.72

execute rotated ~ 0 run particle minecraft:witch ^ ^ ^1.5 0 2 0 0 100 force @a[tag=ShowParticles]
execute rotated ~60 0 run particle minecraft:witch ^ ^ ^1.5 0 2 0 0 100 force @a[tag=ShowParticles]
execute rotated ~120 0 run particle minecraft:witch ^ ^ ^1.5 0 2 0 0 100 force @a[tag=ShowParticles]
execute rotated ~180 0 run particle minecraft:witch ^ ^ ^1.5 0 2 0 0 100 force @a[tag=ShowParticles]
execute rotated ~-120 0 run particle minecraft:witch ^ ^ ^1.5 0 2 0 0 100 force @a[tag=ShowParticles]
execute rotated ~-60 0 run particle minecraft:witch ^ ^ ^1.5 0 2 0 0 100 force @a[tag=ShowParticles]

particle minecraft:witch ~ ~ ~ 1.2 0.1 1.2 0 200 force @a[tag=ShowParticles]
###---演出---End
