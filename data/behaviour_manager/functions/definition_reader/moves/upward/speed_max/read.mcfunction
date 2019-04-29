##############################
### 上昇速度最大値
##############################

### 上昇速度最大値
execute store result score @s UpwardSpeedMax run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Upward.MaxSpeed 100

### 0なら規定値設定
execute unless data entity @s Passengers[0].Item.tag.DefineMove.Upward.MaxSpeed run function behaviour_manager:definition_reader/moves/upward/speed_max/default
