##############################
### 上昇速度最小値
##############################

### 上昇速度最小値
execute store result score @s UpwardSpeedMin run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Upward.MinSpeed 10000

### 0なら規定値設定
execute unless data entity @s Passengers[0].Item.tag.DefineMove.Upward.MinSpeed run function behaviour_manager:definition_reader/moves/upward/speed_min/default
