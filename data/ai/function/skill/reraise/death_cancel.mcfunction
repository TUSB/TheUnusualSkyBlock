##############################
### Reraise処理
##############################
tag @s remove Garbage
function skill:enemy/reraise/health_recovery

### RaiseCount 減少
function #oh_my_dat:please
execute store result score @s _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.Count 0.99999999
execute unless score @s _ matches 0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.Count int 1 run scoreboard players get @s _
execute if score @s _ matches 0 run function skill:enemy/reraise/remove_raise

### 演出 ###
function makeup:skill/enemy/reraise/death_cancel

