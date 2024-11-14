#> entity:spawn/correction_pos/check_2

#経験値オーブのHitBoxの width:0.5, height:0.5として周囲のブロックを確認する
execute unless block ~ ~ ~ air
execute unless block ~0.25 ~ ~ air run return fail
execute unless block ~-0.25 ~ ~ air run return fail
execute unless block ~ ~ ~0.25 air run return fail
execute unless block ~ ~ ~-0.25 air run return fail
execute unless block ~ ~0.25 ~ air run return fail

# 下のブロックがフェンス系ならばここには召喚できない
execute if block ~ ~-0.5 ~ #minecraft:fences run return fail
execute if block ~ ~-0.5 ~ #minecraft:fence_gates run return fail

return 1
