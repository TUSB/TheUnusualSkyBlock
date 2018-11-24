##############################
### 真空斬り飛翔
##############################

###---演出---Start
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @a[distance=..48] at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~64 ~ 8 0.5
###---演出---End
