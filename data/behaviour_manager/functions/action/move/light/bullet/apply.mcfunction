##############################
### ターゲットへ向けての移動
##############################

### 姿勢読み込み
function data_manager:posture/load

### 自身の向きを読み込む
function data_manager:cursor/data_id/load_rotation
# ### 姿勢補正
# execute positioned as 1-0-1-0-0 run function calc_manager:rotation/look_at
# ### 自身の向きを保存する
# function data_manager:cursor/data_id/save_rotation

### 向きを合わせる
execute at @s rotated as 1-0-0-0-0 run tp @s ~ ~ ~ ~ ~

### 向きを補正しておく
execute if entity @s[tag=Ignore.Tilt] at 1-0-0-0-0 run tp 1-0-0-0-0 ~ ~ ~ ~ 0
execute if entity @s[tag=Ignore.Rotate] at 1-0-0-0-0 run tp 1-0-0-0-0 ~ ~ ~ 0 ~
execute at 1-0-0-0-0 positioned ^ ^ ^-1 positioned ~ ~ ~-1 facing entity 1-0-0-0-0 feet positioned as 1-0-0-0-0 run tp 1-0-0-0-0 ~ ~ ~ ~ ~

### 前に移動
execute store result entity 0-0-0-0-20 Pos[2] double 0.01 run scoreboard players get @s ForwardSpeed
### 上に移動
execute store result entity 0-0-0-0-20 Pos[1] double 0.01 run scoreboard players get @s UpwardSpeed
### 左に移動
execute store result entity 0-0-0-0-20 Pos[0] double 0.01 run scoreboard players get @s LeftwardSpeed
### モーション適用
execute at 0-0-0-0-20 positioned ~ ~ ~1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 positioned ~ ~ ~1000 rotated as 1-0-0-0-0 positioned ^ ^ ^1000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 rotated as 1-0-0-0-0 positioned ^ ^ ^1000 positioned ~0.5 ~0.5 ~0.5 align xyz facing 0.0 0.0 0.0 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute store result entity @s Motion[0] double 0.0001 run data get entity 0-0-0-0-20 Pos[0] 100
execute store result entity @s Motion[1] double 0.0001 run data get entity 0-0-0-0-20 Pos[1] 100
execute store result entity @s Motion[2] double 0.0001 run data get entity 0-0-0-0-20 Pos[2] 100

### 以後動き無視
scoreboard players operation @s RepeaterToStart = @s RepeaterToEnd
