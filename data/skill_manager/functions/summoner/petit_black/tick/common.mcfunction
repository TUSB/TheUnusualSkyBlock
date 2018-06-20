##############################
### ぷちブラック毎tick処理共通
##############################

###---演出---Start
execute as @a[distance=..48] at @s run playsound minecraft:entity.endermen.teleport master @a ~ ~ ~ 0.3 0.5
###---演出---End

scoreboard players add @e[distance=..1,tag=Mob] Damage 10000
