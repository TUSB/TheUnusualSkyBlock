##############################
### 幻影演出中処理
##############################

scoreboard players remove @s BlinkSubTimer 1

###---演出---Start
execute if score @s BlinkSubTimer matches 6 run tp @s ~0.2 ~ ~0.2
execute if score @s BlinkSubTimer matches 5 run tp @s ~ ~ ~-0.4
execute if score @s BlinkSubTimer matches 4 run tp @s ~-0.4 ~ ~
execute if score @s BlinkSubTimer matches 3 run tp @s ~ ~ ~0.4
execute if score @s BlinkSubTimer matches 2 run tp @s ~0.4 ~ ~
execute if score @s BlinkSubTimer matches 1 run tp @s ~-0.2 ~ ~-0.2
execute if score @s BlinkSubTimer matches 1..6 anchored eyes run particle minecraft:instant_effect ^ ^ ^ 0.05 0.2 0.05 0 10 force @a[tag=ShowParticles]
###---演出---End

execute if score @s BlinkSubTimer matches ..0 run function skill_manager:enemy/blink/decorate/finalize
