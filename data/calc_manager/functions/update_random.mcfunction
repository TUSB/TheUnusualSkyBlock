##############################
### キャリー付き乗算乱数
##############################

###剰余を利用するため、乱数を退避
scoreboard players operation $Random Global = $RndMWC Global
###キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players operation $RndMWC Global *= $MWCMultiplier Const
scoreboard players operation $RndMWC Global += $RndMWCCarry Global
scoreboard players operation $RndMWCCarry Global = $RndMWC Global
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players operation $RndMWC Global %= $MWCBase Const
## c = (ax + c) / b
scoreboard players operation $RndMWCCarry Global /= $MWCBase Const
