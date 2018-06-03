##############################
### エンド進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 210
###ゲームモード設定
tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The End =","italic":"true","color":"gray"}
title @s title {"text":"ジ・エンド","color":"black","bold":"true","underlined":"true"} 
