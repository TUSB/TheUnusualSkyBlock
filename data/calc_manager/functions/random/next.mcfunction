##############################
### キャリー付き乗算乱数
##############################

###剰余を利用するため、乱数を退避
scoreboard players operation $Result Random = $__Current Random
###キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players operation $__Current Random *= $__Multiplier Random
scoreboard players operation $__Current Random += $__Carry Random
scoreboard players operation $__Carry Random = $__Current Random
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players operation $__Current Random %= $__Base Random
## c = (ax + c) / b
scoreboard players operation $__Carry Random /= $__Base Random
