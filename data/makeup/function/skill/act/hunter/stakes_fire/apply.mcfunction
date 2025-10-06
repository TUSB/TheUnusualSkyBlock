#> makeup:skill/act/hunter/stakes_fire/apply
#
# ステークスファイア 発射
execute if entity @s[tag=StakesFailed] run playsound minecraft:block.fire.extinguish player @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[tag=StakesFailed] run playsound minecraft:item.shield.break player @a[distance=..16] ~ ~ ~ 1 0.8
execute if entity @s[tag=StakesSucceeded] run playsound minecraft:item.firecharge.use player @a[distance=..16] ~ ~ ~ 1 0.5
execute if entity @s[tag=StakesSucceeded] run playsound minecraft:item.firecharge.use player @a[distance=..16] ~ ~ ~ 1 1.5
