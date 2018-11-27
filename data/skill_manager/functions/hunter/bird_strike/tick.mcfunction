##############################
### バードストライク処理
##############################

###モブ処理適用
execute if entity @s[tag=BirdStrike1] positioned ~-4 ~5 ~-4 as @e[dx=8,dy=20,dz=8,tag=Mob] at @s run function skill_manager:hunter/bird_strike/apply1
execute if entity @s[tag=BirdStrike2] positioned ~-4 ~5 ~-4 as @e[dx=8,dy=20,dz=8,tag=Mob] at @s run function skill_manager:hunter/bird_strike/apply2

###---演出---Start
particle minecraft:sweep_attack ~ ~15 ~ 2 4 2 0 100 force @a[tag=ShowParticles]
playsound minecraft:item.elytra.flying master @a[distance=..48] ~ ~ ~ 0.3 2
###---演出---End
