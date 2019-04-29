##############################
### 左回り加速度
##############################

### 左回り加速度
execute store result score @s LeftwardGravity run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Leftward.Acceleration 100

### 0なら規定値設定
execute if score @s LeftwardGravity matches 0 run function behaviour_manager:definition_reader/moves/leftward/acceleration/default
