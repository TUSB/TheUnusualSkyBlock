#> player:trigger/slept_in_bed/
### ベッドイン時

# 全員ベッドの上なら朝にする
scoreboard players set _ _ 1
execute as @a at @s unless block ~ ~ ~ #beds run scoreboard players set _ _ 0
execute if score _ _ matches 1 run schedule function player:trigger/slept_in_bed/change_time 5s replace

# Tips表示
function player:tips/show

# 黒魔導士 ルーラ ホームポイント
function skill:act/black_mage/return/home_point/show

# 難易度別処理 体力回復
function main:difficulty/slept_in_bed

tellraw @s {"translate":"ｽﾔｧ...( ˘ω˘ )","color":"aqua"}
advancement revoke @s only player:trigger/slept_in_bed
