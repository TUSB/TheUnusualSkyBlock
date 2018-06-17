##############################
### 真空斬り飛翔
##############################

###---演出---Start
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @a[distance=..90] at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.75 0.5
###---演出---End
