#> makeup:skill/act/black_mage/return/act0

execute if score _ _ matches 0 run playsound minecraft:block.beacon.deactivate player @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:witch ~ ~8 ~ 0.2 7 0.2 0 50 force
