##############################
### ターゲットへ向けての移動
##############################

### 姿勢読み込み
function data_manager:posture/load

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
execute if entity @s[tag=!Bullet] run function behaviour_manager:behaviour_applier/action/carry_motion

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
### 希望距離補正
execute at 1-0-1-0-0 run function calc_manager:distance/magnitude
scoreboard players set $Offset Distance 0
execute if score $Result Distance > @s DesiredDistance run scoreboard players operation $Offset Distance += @s ForwardSpeed
execute unless score $Result Distance > @s DesiredDistance run scoreboard players operation $Offset Distance -= @s ForwardSpeed
scoreboard players operation $Offset Distance > @s ForwardSpeedMin
scoreboard players operation $Offset Distance < @s ForwardSpeedMax
### 前に移動
execute at 0-0-0-0-20 rotated as 0-0-0-0-10 as 0-0-0-0-20 run function calc_manager:move/forward
### 希望高度補正
execute at @s as 1-0-1-0-0 run function calc_manager:distance/height
scoreboard players set $Offset Distance 0
execute if score $Result Distance > @s DesiredHeight run scoreboard players operation $Offset Distance -= @s UpwardSpeed
execute unless score $Result Distance > @s DesiredHeight run scoreboard players operation $Offset Distance += @s UpwardSpeed
scoreboard players operation $Offset Distance > @s UpwardSpeedMin
scoreboard players operation $Offset Distance < @s UpwardSpeedMax
### 上に移動
execute at 0-0-0-0-20 rotated as 0-0-0-0-10 facing ^ ^1 ^ as 0-0-0-0-20 run function calc_manager:move/forward
### 左に移動
scoreboard players operation $Offset Distance = @s LeftwardSpeed
execute at 0-0-0-0-20 rotated as 0-0-0-0-10 facing ^1 ^ ^ as 0-0-0-0-20 run function calc_manager:move/forward
### モーション適用
execute at 0-0-0-0-20 positioned ~0.5 ~0.5 ~0.5 align xyz run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute store result entity @s Motion[0] double 0.01 run data get entity 0-0-0-0-20 Pos[0] 1
execute store result entity @s Motion[1] double 0.01 run data get entity 0-0-0-0-20 Pos[1] 1
execute store result entity @s Motion[2] double 0.01 run data get entity 0-0-0-0-20 Pos[2] 1
execute positioned 0.0 0.0 0.0 in overworld run tp 0-0-0-0-20 ~ ~ ~ ~ ~

### エンティティ返却
function data_manager:posture/return
