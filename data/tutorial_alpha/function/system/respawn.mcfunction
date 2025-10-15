# デフォルトとしてチュートリアル初期地点に復活
spawnpoint @s -4291 33 808
# 範囲内かつめり込んでなければ死んだ地点に復活する
execute if data entity @s[y=0,dy=255] {Dimension:"area:debug_room"} if block ~ ~ ~ #block:no_collision run spawnpoint @s ~ ~ ~
execute unless data entity @s {Dimension:"area:debug_room"} run function tutorial_alpha:system/issue_178
