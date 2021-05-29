
###生き返り後処理

##体力再設定
#最大体力
function effects:status/modify_max
#MP超過修正
scoreboard players operation @s MP < @s MPMax
#全回復
effect give @s instant_health 1 10 true

##満腹度調整
function effects:status/hunger

## フラグリセット
scoreboard players reset @s Hunger
