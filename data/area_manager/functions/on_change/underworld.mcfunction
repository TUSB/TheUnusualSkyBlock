##############################
### 地下世界進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 12
###ゲームモード設定
scoreboard players tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.6 0.7 0
title @s subtitle {"text":"= The Underworld =","italic":"true","color":"dark_gray"}
title @s title {"text":"地下世界","color":"dark_blue","bold":"true","underlined":"true"} 
