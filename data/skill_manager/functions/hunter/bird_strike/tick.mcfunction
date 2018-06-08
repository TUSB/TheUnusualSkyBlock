##############################
### バードストライク処理
##############################

###モブ処理適用
execute positioned ~-4 ~-2 ~-4 as @e[dx=8,dy=25,dz=8,tag=Mob] at @s run function skill_manager:hunter/bird_strike/apply

###演出
particle minecraft:sweep_attack ~ ~10 ~ 2 5 2 0 100 force
