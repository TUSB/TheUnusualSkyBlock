
## 飛空島の駅移動

# チャンク強制読み込み
execute in area:skylands run forceload add -52 -597
execute in area:skylands run forceload add -64 -701
execute in area:skylands run forceload add 115 -518
execute in area:flying_island run forceload add -615 -783

# 初回なら交易島の駅を開放する
execute unless data storage area: FlyingIslandGate run data modify storage area: FlyingIslandGate set value "PrisonGate"

# 各駅を開放する
scoreboard players set _ _ 0
execute if score _ _ matches 0 if data storage area: {FlyingIslandGate:"PrisonGate"} run function area:flying_islands_gate/trade_gate
execute if score _ _ matches 0 if data storage area: {FlyingIslandGate:"TradeGate"} run function area:flying_islands_gate/water_gate
execute if score _ _ matches 0 if data storage area: {FlyingIslandGate:"WaterGate"} run function area:flying_islands_gate/prison_gate

# チャンク強制読み込み解除
execute in area:skylands run forceload remove -52 -597
execute in area:skylands run forceload remove -64 -701
execute in area:skylands run forceload remove 115 -518
execute in area:flying_island run forceload remove -615 -783

# 1日後にまた実行
schedule function area:flying_islands_gate/change 1d replace
