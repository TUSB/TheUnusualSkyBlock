#> makeup:skill/act/hunter/stakes_fire/tick
#
# ステークスファイア 毎tick演出
execute if entity @s[tag=StakesFailed] run particle minecraft:dust{color:[0,0,0],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 1 10 force @a[tag=ShowParticles]
execute if entity @s[tag=StakesSucceeded] run particle minecraft:dust{color:[1,0,0,],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 1 10 force @a[tag=ShowParticles]
