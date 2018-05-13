##############################
### 煉獄進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 110
###ゲームモード設定
scoreboard players tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.6 0.5 0
title @s subtitle {"text":"= Purgatory =","italic":"true","color":"black"}
title @s title {"text":" 煉  獄 ","color":"dark_red","bold":"true","underlined":"true"}
