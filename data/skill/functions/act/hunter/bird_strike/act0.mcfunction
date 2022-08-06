##############################
### バードストライク処理
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"バードストライク",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"バードストライク",Level:2}].Damage
function skill:damage/add/skill/weapon
#適用
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill:act/hunter/bird_strike/act1
#演出
function makeup:skill/act/hunter/bird_strike/act0
