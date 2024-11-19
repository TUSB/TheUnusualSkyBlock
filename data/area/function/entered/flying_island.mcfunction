

# トリガー解除
advancement revoke @s only area:entered/flying_island
# 設定反映
function settings:area/flying_island
function area:entered/
# 演出表示
function makeup:area/entered/flying_island

# 初回入場ならば交易島固定を解除
execute if data storage area: {FlyingIslandEnteredFlag:1b} run schedule function area:flying_islands_gate/change 1d replace
data remove storage area: FlyingIslandEnteredFlag