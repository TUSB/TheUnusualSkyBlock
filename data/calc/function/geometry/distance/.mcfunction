#> calc:geometry/distance/
##############################
### 距離
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set _ Ret to the magnitude of the distance between [Source] and [Destination].

#AiUtilのdistance機能に任せる
function #util:distance

return run execute store result score _ Ret run data get storage util: out 100
