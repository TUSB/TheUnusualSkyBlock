##############################
### ターゲットへ向けての移動
##############################

### 姿勢読み込み
function data_manager:posture/load

### 姿勢補正
execute positioned as 1-0-1-0-0 run function calc_manager:rotation/slerp

# ### 向きを補正しておく
execute if entity @s[tag=IgnoreTilt] at 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ ~ 0
execute if entity @s[tag=IgnoreRotate] at 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ 0 ~
execute at 0-0-0-0-10 positioned ^ ^ ^-1 positioned ~ ~ ~-1 facing entity 0-0-0-0-10 feet positioned as 0-0-0-0-10 run tp 0-0-0-0-10 ~ ~ ~ ~ ~

### 速度代入
execute store result score $_ ForwardSpeed run scoreboard players operation @s ForwardSpeed += @s ForwardGravity
execute store result score $_ UpwardSpeed run scoreboard players operation @s UpwardSpeed += @s UpwardGravity
execute store result score $_ LeftwardSpeed run scoreboard players operation @s LeftwardSpeed += @s LeftwardGravity

### 希望距離補正
execute at 1-0-1-0-0 run function calc_manager:distance/magnitude
execute if score $Result Distance < @s DesiredDistance run scoreboard players operation $_ ForwardSpeed *= @s OnCloseForwardBy
### 前に移動
execute store result entity 0-0-0-0-20 Pos[2] double 0.01 run scoreboard players get $_ ForwardSpeed
### 希望高度補正
execute at @s as 1-0-1-0-0 run function calc_manager:distance/height
execute if score $Result Distance < @s DesiredHeight run scoreboard players operation $_ UpwardSpeed *= @s OnCloseUpwardBy
### 上に移動
execute store result entity 0-0-0-0-20 Pos[1] double 0.01 run scoreboard players get $_ UpwardSpeed
### 左に移動
execute store result entity 0-0-0-0-20 Pos[0] double 0.01 run scoreboard players get $_ LeftwardSpeed
### モーション適用
execute at 0-0-0-0-20 positioned ~ ~ ~1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 positioned ~ ~ ~1000 rotated as 0-0-0-0-10 positioned ^ ^ ^1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 rotated as 0-0-0-0-10 positioned ^ ^ ^1000 positioned ~0.5 ~0.5 ~0.5 align xyz facing 0.0 0.0 0.0 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute store result entity @s Motion[0] double 0.00001 run data get entity 0-0-0-0-20 Pos[0] 100
execute store result entity @s Motion[1] double 0.00001 run data get entity 0-0-0-0-20 Pos[1] 100
execute store result entity @s Motion[2] double 0.00001 run data get entity 0-0-0-0-20 Pos[2] 100
