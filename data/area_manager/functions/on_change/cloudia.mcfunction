##############################
### クラウディア進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 14
###ゲームモード設定
scoreboard players tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Cloudia =","italic":"true","color":"gray"}
title @s title {"text":"クラウディア","color":"white","bold":"true","underlined":"true"}
