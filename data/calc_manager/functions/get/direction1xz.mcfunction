##############################
### 特定のエンティティまたは座標に水平方向だけ向かったときの向きをスコアにセットする
##############################

### Usage: execute as Source at Destination run function this
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 rotated ~ 0 run tp 0-0-0-0-0 ^ ^ ^1 ~ ~
execute as 0-0-0-0-0 run function calc_manager:get/pos1
