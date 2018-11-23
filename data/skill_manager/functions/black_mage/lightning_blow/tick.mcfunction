##############################
### ライトニングブロー演出用
##############################

###---演出---Start
execute if score @s LightningBlow matches ..5000000 rotated ~ 0 positioned ^-0.3 ^1.2 ^0.4 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.06 0.3 0.06 0 2 force
execute if score @s LightningBlow matches 5000001..10000000 rotated ~ 0 positioned ^-0.3 ^1.4 ^0.4 run particle minecraft:dust 1.3 1 0 1 ~ ~ ~ 0.06 0.3 0.06 0 2 force
execute if score @s LightningBlow matches 10000001.. rotated ~ 0 positioned ^-0.3 ^1.2 ^0.4 run particle minecraft:dust 1.3 1 0 1 ~ ~ ~ 0.06 0.3 0.06 0 2 force
execute if score @s LightningBlow matches 10000001.. rotated ~ 0 positioned ^-0.3 ^1.2 ^0.4 run particle minecraft:dust 0.8 0 1 0.6 ~ ~ ~ 0.15 0.4 0.15 0 2 force
###---演出---End
