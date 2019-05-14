##############################
### ターゲットへ向けての移動
##############################

### 姿勢読み込み
function data_manager:posture/load

### 向きデータがない時は向きを補正
execute unless score @s RotateAngle matches -2147483648.. run function data_manager:posture/get_value/angle_with_offset

### 上へ補正
scoreboard players set $Offset Distance 0
scoreboard players operation $Offset Distance = @s[tag=Destination.Update] TargetUpward
function data_manager:posture/get_value/eye_height
execute if entity @s[tag=Bullet] run scoreboard players operation $Offset Distance += $Result EyeHeight
execute unless score $Offset Distance matches 0 run function data_manager:posture/modify/upward
### 前へ補正
scoreboard players set $Offset Distance 0
scoreboard players operation $Offset Distance = @s[tag=Destination.Update] TargetForward
execute unless score $Offset Distance matches 0 run function data_manager:posture/modify/forward

### モーション保持
execute at 0-0-2-0-1 positioned 0.0 0.0 0.0 run tp 0-0-2-0-1 ~ ~ ~ ~ ~
execute if entity @s[tag=!Bullet] run data modify entity 0-0-2-0-1 Pos set from entity @s Motion

### 姿勢補正
execute positioned as 1-0-1-0-0 run function calc_manager:rotation/slerp

### スピード補正
scoreboard players operation @s ForwardSpeed += @s ForwardGravity
scoreboard players operation @s LeftwardSpeed += @s LeftwardGravity
scoreboard players operation @s UpwardSpeed += @s UpwardGravity
### スピード制限
scoreboard players operation @s ForwardSpeed > @s ForwardSpeedMin
scoreboard players operation @s ForwardSpeed < @s ForwardSpeedMax
scoreboard players operation @s LeftwardSpeed > @s LeftwardSpeedMin
scoreboard players operation @s LeftwardSpeed < @s LeftwardSpeedMax
scoreboard players operation @s UpwardSpeed > @s UpwardSpeedMin
scoreboard players operation @s UpwardSpeed < @s UpwardSpeedMax

### 向きを補正しておく
execute if entity @s[tag=IgnoreTilt] at 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ ~ 0
execute if entity @s[tag=IgnoreRotate] at 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ 0 ~
execute at 0-0-0-0-10 positioned ^ ^ ^-1 positioned ~ ~ ~-1 facing entity 0-0-0-0-10 feet positioned as 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 希望距離補正
execute at 1-0-1-0-0 run function calc_manager:distance/magnitude
scoreboard players set $Offset Distance 0
execute if score $Result Distance > @s DesiredDistance run scoreboard players operation $Offset Distance += @s ForwardSpeed
execute unless score $Result Distance > @s DesiredDistance run scoreboard players operation $Offset Distance -= @s ForwardSpeed
scoreboard players operation $Offset Distance > @s ForwardSpeedMin
scoreboard players operation $Offset Distance < @s ForwardSpeedMax
### 前に移動
execute store result entity 0-0-0-0-20 Pos[2] double 0.01 run scoreboard players get $Offset Distance
### 希望高度補正
execute at @s as 1-0-1-0-0 run function calc_manager:distance/height
scoreboard players set $Offset Distance 0
execute if score $Result Distance > @s DesiredHeight run scoreboard players operation $Offset Distance -= @s UpwardSpeed
execute unless score $Result Distance > @s DesiredHeight run scoreboard players operation $Offset Distance += @s UpwardSpeed
scoreboard players operation $Offset Distance > @s UpwardSpeedMin
scoreboard players operation $Offset Distance < @s UpwardSpeedMax
### 上に移動
execute store result entity 0-0-0-0-20 Pos[1] double 0.01 run scoreboard players get $Offset Distance
### 左に移動
scoreboard players operation $Offset Distance = @s LeftwardSpeed
execute store result entity 0-0-0-0-20 Pos[0] double 0.01 run scoreboard players get $Offset Distance
### モーション適用
execute at 0-0-0-0-20 positioned ~ ~ ~1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 positioned ~ ~ ~1000 rotated as 0-0-0-0-10 positioned ^ ^ ^1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 rotated as 0-0-0-0-10 positioned ^ ^ ^1000 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute at 0-0-2-0-1 facing 0.0 0.0 0.0 positioned ^ ^ ^-2000 facing entity 0-0-0-0-20 feet positioned ^ ^ ^2000 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
data modify entity @s Motion set from entity 0-0-0-0-20 Pos

### エンティティ返却
function data_manager:posture/return
