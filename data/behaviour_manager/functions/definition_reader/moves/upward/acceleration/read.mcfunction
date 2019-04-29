##############################
### 上昇加速度
##############################

### 上昇加速度
execute store result score @s UpwardGravity run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Upward.Acceleration 100

### 0なら規定値設定
execute if score @s UpwardGravity matches 0 run function behaviour_manager:definition_reader/moves/upward/acceleration/default
