##############################
### 前速度
##############################

### 前速度
### プレイヤー歩き相対
execute store result score @s SpinSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.SpinSpeed 5

### 0なら規定値設定
execute if score @s SpinSpeed matches 0 run function behaviour_manager:definition_reader/moves/spin_speed/default
