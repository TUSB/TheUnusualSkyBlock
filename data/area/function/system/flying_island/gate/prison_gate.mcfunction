#> area:system/flying_island/gate/prison_gate
## 牢獄の駅を開放する

execute in area:skylands run setblock -52 13 -597 minecraft:bedrock
execute in area:skylands run setblock 115 35 -518 minecraft:bedrock
execute in area:skylands positioned -64 121 -701 run function area:end_gateway

execute in area:skylands run setblock -52 11 -597 minecraft:obsidian
execute in area:skylands run setblock 115 33 -518 minecraft:obsidian
execute in area:skylands run setblock -64 119 -701 minecraft:red_stained_glass

execute in area:flying_island run fill -615 89 -783 -614 89 -782 minecraft:red_stained_glass

data modify storage area: FlyingIslandGate set value "PrisonGate"
scoreboard players set _ _ 1
