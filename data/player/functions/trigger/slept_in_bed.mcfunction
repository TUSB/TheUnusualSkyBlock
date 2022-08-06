
### ベッドイン時

# Tips表示
function player:tips/show

# 黒魔導士 ルーラ ホームポイント
function skill:act/black_mage/return/home_point/check

function makeup:player/trigger/slept_in_bed
advancement revoke @s only player:trigger/slept_in_bed
