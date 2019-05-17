##############################
### ターゲットへ速度制限付きで向かせる
##############################

## 自身の角度(アマスタ)での位置ベクトルを用意
execute at 1-0-0-0-0 rotated as @e[distance=0,tag=DataHolder,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^40.96 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 目的の向きの角度の単位ベクトルから鉛直方向の単位ベクトルへの法線を持つ鏡を用意し鏡像変換
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned ~ ~-1 ~ facing 0.0 0.0 0.0 as 0-0-0-0-10 run function calc_manager:mirror/change
execute at 0-0-0-0-10 facing 0.0 0.0 0.0 facing ^ ^ ^-1 positioned 0.0 0.0 0.0 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 角度を取得
execute store result score $_ TiltAngle run data get entity 0-0-0-0-10 Rotation[1] 100
### Speedに応じて回転させて角度を設定
scoreboard players operation $_ TiltAngle -= @s SpinAmount
execute unless score $_ TiltAngle matches -9000.. run scoreboard players set $_ TiltAngle -9000
execute store result entity 0-0-0-0-10 Rotation[1] float 0.01 run scoreboard players get $_ TiltAngle
### 角度に応じて位置を補正
execute at 0-0-0-0-10 positioned 0.0 0.0 0.0 positioned ^ ^ ^40.96 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 鏡像逆変換
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned ~ ~-1 ~ facing 0.0 0.0 0.0 as 0-0-0-0-10 run function calc_manager:mirror/rechange
execute at 0-0-0-0-10 facing 0.0 0.0 0.0 facing ^ ^ ^-1 positioned 0.0 0.0 0.0 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 向きセット
execute at 1-0-0-0-0 rotated as 0-0-0-0-10 run tp @e[distance=0,tag=DataHolder,limit=1] ~ ~ ~ ~ ~

### 回転量リセット
scoreboard players reset @s SpinAmount
