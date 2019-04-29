##############################
### 上昇速度
##############################

### 上昇速度
execute store result score @s UpwardSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Upward.Speed 100

### 0なら規定値設定
execute if score @s UpwardSpeed matches 0 run function behaviour_manager:definition_reader/moves/upward/speed/default
