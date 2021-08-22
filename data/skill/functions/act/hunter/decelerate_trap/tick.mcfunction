##############################
### ボミオストラップ継続
##############################

#レベル取得
execute store result score _ Level run data get entity @s ReapplicationDelay
#Motion減速倍率
execute if score _ Level matches 1 run scoreboard players set _ Calc 80
execute if score _ Level matches 2 run scoreboard players set _ Calc 60
execute if score _ Level matches 3 run scoreboard players set _ Calc 40
#適用
execute as @e[tag=Mob,distance=..5] run function skill:act/hunter/decelerate_trap/apply
#演出
function makeup:skill/act/hunter/decelerate_trap/tick
