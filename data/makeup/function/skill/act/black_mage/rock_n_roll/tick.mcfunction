#> makeup:skill/act/black_mage/rock_n_roll/tick
#
# ロックンロール毎tick演出
execute if entity @e[distance=..6,tag=RockNRoll,limit=1] run playsound minecraft:block.stone.step player @a[distance=..16] ~ ~ ~ 1.5 0.5
execute at @e[distance=..6,tag=RockNRoll] anchored eyes run particle minecraft:item{item:{id:"minecraft:granite"}} ^ ^ ^-0.2 0.1 0.2 0.2 0.05 2 force @a[tag=ShowParticles]
