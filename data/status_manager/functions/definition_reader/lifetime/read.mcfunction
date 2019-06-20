##############################
### 寿命読み込み
##############################

### 寿命読み込み
execute store result score @s LifeTime at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.StatusSettings.LifeTime 1

### 1以上でない場合は規定値を読み込み
execute unless score @s LifeTime matches 1.. run function status_manager:definition_reader/lifetime/default
