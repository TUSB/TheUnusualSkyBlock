##############################
### ネザー進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 100
###ゲームモード設定
tag @s remove Adv
###共通処理
function area_manager:on_change/common
###---演出---Start
execute at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The Nether =","italic":"true","color":"dark_red"}
title @s title {"text":"ネザー","color":"red","bold":"true","underlined":"true"}
###---演出---End
