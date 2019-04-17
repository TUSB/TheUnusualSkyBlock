##############################
### ターゲットへの水平回転速度規定値
##############################

### 水平回転速度
### 何度かx100を20tickで割るのでx5
execute store result score @s RotateSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].RotateSpeed 5

### 0なら規定値設定
execute if score @s RotateSpeed matches 0 run function behaviour_manager:definition_reader/directions/rotate_speed/default
