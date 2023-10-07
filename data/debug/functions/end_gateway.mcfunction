
# エンドゲートウェイ設置
setblock ~ ~ ~ end_gateway{ExactTeleport:true}

# 座標を代入する
execute store result block ~ ~ ~ ExitPortal.X int 1 run data get block ~ ~ ~ x
execute store result block ~ ~ ~ ExitPortal.Y int 1 run data get block ~ ~ ~ y
execute store result block ~ ~ ~ ExitPortal.Z int 1 run data get block ~ ~ ~ z
