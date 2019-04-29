##############################
### 左回り速度
##############################

### 左回り速度
execute store result score @s LeftwardSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Leftward.Speed 100

### 0なら規定値設定
execute if score @s LeftwardSpeed matches 0 run function behaviour_manager:definition_reader/moves/leftward/speed/default
