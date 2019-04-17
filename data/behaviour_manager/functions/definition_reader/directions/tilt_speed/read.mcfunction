##############################
### ターゲットへの垂直回転速度規定値
##############################

### 垂直回転速度
### 何度かx100を20tickで割るのでx5
execute store result score @s TiltSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TiltSpeed 5

### 0なら規定値設定
execute if score @s TiltSpeed matches 0 run function behaviour_manager:definition_reader/directions/tilt_speed/default
