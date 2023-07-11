

# トリガー解除
advancement revoke @s only area:entered/nether_trial
# 設定反映
function settings:area/nether_trial
function area:entered/
# 演出表示
function makeup:area/entered/nether_trial

# カジュアル以外はネザーアスレ専用処理実行
execute unless data storage main: difficult{world:"casual"} run function main:difficulty/nether_trial
