##############################
### 距離
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set _ Ret to the magnitude of the distance between [Source] and [Destination].

#AiUtilのdistance機能に任せる
function util:distance/

scoreboard players operation _ Ret = _ AiMath
scoreboard players get _ Ret
