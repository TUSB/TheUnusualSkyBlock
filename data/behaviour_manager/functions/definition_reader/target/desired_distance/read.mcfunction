##############################
### ターゲット希望距離読み込み
##############################

### 距離読み込み
execute store result score @s DesiredDistance at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.TargetSettings.DesiredDistance 100

### 1cm以上でない場合は規定値を読み込み
execute unless score @s DesiredDistance matches 1.. run function behaviour_manager:definition_reader/target/desired_distance/default
