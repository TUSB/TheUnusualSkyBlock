##############################
### 左回り速度最大値
##############################

### 左回り速度最大値
execute store result score @s LeftwardSpeedMax run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Leftward.MaxSpeed 100

### 0なら規定値設定
execute unless data entity @s Passengers[0].Item.tag.DefineMove.Leftward.MaxSpeed run function behaviour_manager:definition_reader/moves/leftward/speed_max/default
