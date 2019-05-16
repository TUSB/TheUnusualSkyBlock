##############################
### ターゲットへ向けての移動
##############################

### 姿勢読み込み
function data_manager:posture/load

### 姿勢補正
execute positioned as 1-0-1-0-0 run function calc_manager:rotation/slerp

### モーション保持
execute store result score $_ MotionX run data get entity @s Motion[0] 10000
execute store result score $_ MotionY run data get entity @s Motion[1] 10000
execute store result score $_ MotionZ run data get entity @s Motion[2] 10000

### スピード補正
execute unless score @s ForwardGravity matches 0 run function behaviour_manager:behaviour_applier/action/accelerate/forward
execute unless score @s UpwardGravity matches 0 run function behaviour_manager:behaviour_applier/action/accelerate/upward
execute unless score @s LeftwardGravity matches 0 run function behaviour_manager:behaviour_applier/action/accelerate/leftward

# ### 向きを補正しておく
execute if entity @s[tag=IgnoreTilt] at 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ ~ 0
execute if entity @s[tag=IgnoreRotate] at 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ 0 ~
execute at 0-0-0-0-10 positioned ^ ^ ^-1 positioned ~ ~ ~-1 facing entity 0-0-0-0-10 feet positioned as 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 希望距離補正
execute at 1-0-1-0-0 run function calc_manager:distance/magnitude
scoreboard players operation $Result Distance -= @s DesiredDistance
scoreboard players set $Offset Distance 0
execute if score $Result Distance matches 1.. run scoreboard players operation $Offset Distance += @s ForwardSpeed
execute unless score $Result Distance matches 1.. run scoreboard players operation $Offset Distance -= @s ForwardSpeed
scoreboard players operation $Offset Distance > @s ForwardSpeedMin
scoreboard players operation $Offset Distance < @s ForwardSpeedMax
### 前に移動
execute store result entity 0-0-0-0-20 Pos[2] double 0.01 run scoreboard players get $Offset Distance
### 希望高度補正
execute at @s as 1-0-1-0-0 run function calc_manager:distance/height
scoreboard players operation $Result Distance -= @s DesiredHeight
scoreboard players set $Offset Distance 0
execute if score $Result Distance matches 1.. run scoreboard players operation $Offset Distance -= @s UpwardSpeed
execute unless score $Result Distance matches 1.. run scoreboard players operation $Offset Distance += @s UpwardSpeed
scoreboard players operation $Offset Distance > @s UpwardSpeedMin
scoreboard players operation $Offset Distance < @s UpwardSpeedMax
### 上に移動
execute store result entity 0-0-0-0-20 Pos[1] double 0.01 run scoreboard players get $Offset Distance
### 左に移動
scoreboard players operation $Offset Distance = @s LeftwardSpeed
execute store result entity 0-0-0-0-20 Pos[0] double 0.01 run scoreboard players get $Offset Distance
### モーション適用
execute at 0-0-0-0-20 positioned ~ ~ ~1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 positioned ~ ~ ~1000 rotated as 0-0-0-0-10 positioned ^ ^ ^1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 rotated as 0-0-0-0-10 positioned ^ ^ ^1000 positioned ~0.5 ~0.5 ~0.5 align xyz facing 0.0 0.0 0.0 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute store result score @s MotionX run data get entity 0-0-0-0-20 Pos[0] 100
execute store result score @s MotionY run data get entity 0-0-0-0-20 Pos[1] 100
execute store result score @s MotionZ run data get entity 0-0-0-0-20 Pos[2] 100
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s MotionX += $_ MotionX
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s MotionY += $_ MotionY
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s MotionZ += $_ MotionZ
