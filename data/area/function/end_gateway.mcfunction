
# エンドゲートウェイ設置
setblock ~ ~ ~ end_gateway{Age:201L,exit_portal:[I;0,0,0]}

# 座標を代入する
execute store result block ~ ~ ~ exit_portal[0] int 1 run data get block ~ ~ ~ x
execute store result block ~ ~ ~ exit_portal[1] int 1 run data get block ~ ~ ~ y
execute store result block ~ ~ ~ exit_portal[2] int 1 run data get block ~ ~ ~ z
data modify block ~ ~ ~ ExactTeleport set value true
