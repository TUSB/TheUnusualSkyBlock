##############################
### 鍛冶エラー
##############################

###---演出---Start
playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1
execute rotated ~ 0 positioned ^ ^1.2 ^1 run particle minecraft:barrier ~ ~ ~ 0 0 0 1 0 force @a[tag=ShowParticles]
###---演出---End
