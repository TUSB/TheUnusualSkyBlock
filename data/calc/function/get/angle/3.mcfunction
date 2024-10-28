#> calc:get/angle/3
### 特定のエンティティまたは座標に向かったときの傾きをストレージにセットする

### Usage: execute as Source at Destination run function this
###        execute as Source positioned xyz run function this
execute facing entity @s feet facing ^ ^ ^-1 in area:control_area positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1 ~ ~
execute as 0-0-0-0-0 run data modify storage calc: Rotation.3 set from entity @s Rotation
