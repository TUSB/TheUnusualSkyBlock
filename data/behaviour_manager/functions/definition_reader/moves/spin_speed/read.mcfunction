##############################
### ターゲットへの回転可能速度
##############################

### 回転可能速度
### x100を20tickで割るのでx5
execute store result score @s SpinSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMoves[0].SpinSpeed 5

### 0なら規定値設定
execute if score @s SpinSpeed matches 0 run function behaviour_manager:definition_reader/moves/spin_speed/default
