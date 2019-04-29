##############################
### 左回り速度最小値
##############################

### 左回り速度最小値
execute store result score @s LeftwardSpeedMin run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Leftward.MinSpeed 100

### 0なら規定値設定
execute unless data entity @s Passengers[0].Item.tag.DefineMove.Leftward.MinSpeed run function behaviour_manager:definition_reader/moves/leftward/speed_min/default
