##############################
### 通常世界進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 0
###ゲームモード設定
tag @s remove Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.firework.launch master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The Skylands =","italic":"true","color":"white"}
title @s title {"text":"通常世界","color":"gray","bold":"true","underlined":"true"}