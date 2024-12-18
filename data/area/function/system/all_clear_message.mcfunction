#> area:system/all_clear_message
#
# 全クリアメッセージ
#
# @within function area:system/island_capture

title @a subtitle [{"translate":"クリア時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
title @a title {"translate":"全ての島を攻略した!!","color":"green"}

tellraw @a {"translate":"クリアおめでとうございます！","color":"green"}
tellraw @a {"translate":"ここまでプレイしていただきありがとうございました！","color":"green"}

execute at @a[predicate=entity:player] run function makeup:area/system/all_clear_firework
