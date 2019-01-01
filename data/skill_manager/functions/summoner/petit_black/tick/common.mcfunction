##############################
### ぷちブラック毎tick処理共通
##############################

###---演出---Start
execute as @a[distance=..48] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.2 0.5
###---演出---End

scoreboard players add @e[distance=..1,tag=Mob] Damage 90000
