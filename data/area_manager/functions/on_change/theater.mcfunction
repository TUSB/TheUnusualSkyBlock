##############################
### 劇場進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 11
###ゲームモード設定
tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Theater =","italic":"true","color":"white"}
title @s title {"text":"劇場","color":"gray","bold":"true","underlined":"true"}

say test