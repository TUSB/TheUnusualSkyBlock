execute if entity @s[tag=StakesFailed] run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[tag=StakesFailed] run playsound minecraft:item.shield.break master @a[distance=..16] ~ ~ ~ 1 0.8
execute if entity @s[tag=StakesSucceeded] run playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 1 0.5
execute if entity @s[tag=StakesSucceeded] run playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 1 1.5
