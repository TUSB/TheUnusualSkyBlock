

# トリガー解除
advancement revoke @s only area:entered/skylands
# 設定反映
function settings:area/skylands
function area:entered/
# 演出表示
function makeup:area/entered/skylands

# 難易度確定
# 未決定ならカジュアルに設定
execute unless data storage main: difficult.selected run function main:difficulty/select/casual
