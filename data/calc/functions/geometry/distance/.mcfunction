##############################
### 距離
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set _ Ret to the magnitude of the distance between [Source] and [Destination].

#Source
execute at @s run function calc:geometry/tp_00001
#Destination
execute facing entity @s feet run function calc:geometry/tp_00000
#TP
#読み込み範囲外にTPするため@sでアクセスする
execute as 0-0-0-0-0 run function calc:geometry/distance/tp
#距離を返す
scoreboard players get _ Ret
