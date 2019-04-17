##############################
### 追跡範囲読み込み
##############################

### 1cm単位で読み込み
execute store result score @s FollowRange run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineTarget.FollowRange 100

### 1cm以上でない場合は規定値を読み込み
execute unless score @s FollowRange matches 1.. run function behaviour_manager:definition_reader/target/follow_range/default
