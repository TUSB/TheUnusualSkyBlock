### キャリー付き乗算乱数

###キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players set _ _ 31743
scoreboard players operation $RndMWC Random *= _ _
scoreboard players operation $RndMWC Random += $RndMWCCarry Random
scoreboard players operation $RndMWCCarry Random = $RndMWC Random
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players set _ _ 65536
scoreboard players operation $RndMWC Random %= _ _
## c = (ax + c) / b
scoreboard players operation $RndMWCCarry Random /= _ _
## 乱数を返す
return run scoreboard players get $RndMWC Random
