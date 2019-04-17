##############################
### ターゲット希望距離読み込み
##############################

### 距離読み込み
execute store result score @s DesiredDistance run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineTarget.DesiredDistance 100

### 1cm以上でない場合は規定値を読み込み
execute unless score @s DesiredDistance matches 1.. run function behaviour_manager:definition_reader/target/desired_distance/default
