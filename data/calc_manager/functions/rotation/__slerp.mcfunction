##############################
### ターゲットへ速度制限付きで向かせる
##############################

### 目的の向きの角度の単位ベクトルから鉛直方向の単位ベクトルへの向きを取得
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned ~ ~-1 ~ facing 0.0 0.0 0.0 in overworld run tp 0-0-0-0-2 ~ ~ ~ ~ ~

## 自身の角度での単位ベクトルを用意
function calc_manager:rotation/write
execute at 0-0-0-0-3 rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^40.96 run tp 0-0-0-0-3 ~ ~ ~ ~ ~

### 自身の向きを鏡像変換
execute at 0-0-0-0-2 positioned ^ ^ ^2048 facing entity 0-0-0-0-3 feet positioned ^ ^ ^2048 rotated as 0-0-0-0-2 positioned ^1024 ^ ^ facing entity 0-0-0-0-3 feet positioned ^ ^ ^-1024 rotated as 0-0-0-0-2 positioned ^-2048 ^ ^ facing 0.0 0.0 0.0 facing ^ ^ ^-1 run tp 0-0-0-0-3 ~ ~ ~ ~ ~

### 角度を取得
execute store result score $_ TiltAngle run data get entity 0-0-0-0-3 Rotation[1] 100
### Speedに応じて回転させて角度を設定
scoreboard players operation $_ TiltAngle -= @s SpinAmount
scoreboard players reset @s SpinAmount
execute unless score $_ TiltAngle matches -9000.. run scoreboard players set $_ TiltAngle -9000
execute store result entity 0-0-0-0-3 Rotation[1] float 0.01 run scoreboard players get $_ TiltAngle
### 角度に応じて位置を補正
execute as 0-0-0-0-3 at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^40.96 run tp @s ~ ~ ~ ~ ~

### 自身の向きを鏡像変換
execute at 0-0-0-0-2 positioned ^ ^ ^2048 facing entity 0-0-0-0-3 feet positioned ^ ^ ^2048 rotated as 0-0-0-0-2 positioned ^-1024 ^ ^ facing entity 0-0-0-0-3 feet positioned ^ ^ ^-1024 rotated as 0-0-0-0-2 positioned ^2048 ^ ^ facing 0.0 0.0 0.0 facing ^ ^ ^-1 positioned 0.0 0.0 0.0 run tp 0-0-0-0-3 ~ ~ ~ ~ ~

### 角度をコピー
data modify entity @s Rotation set from entity 0-0-0-0-3 Rotation

## スコアをセット
function calc_manager:rotation/read
