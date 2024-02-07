
## 交易島の駅を開放する

execute in area:skylands positioned -52 13 -597 run function area:end_gateway
execute in area:skylands run setblock 115 35 -518 bedrock
execute in area:skylands run setblock -64 121 -701 bedrock

execute in area:skylands run setblock -52 11 -597 minecraft:green_stained_glass
execute in area:skylands run setblock 115 33 -518 minecraft:obsidian
execute in area:skylands run setblock -64 119 -701 minecraft:obsidian

execute in area:flying_island run fill -615 89 -783 -614 89 -782 green_stained_glass

data modify storage area: FlyingIslandGate set value "TradeGate"
scoreboard players set _ _ 1
