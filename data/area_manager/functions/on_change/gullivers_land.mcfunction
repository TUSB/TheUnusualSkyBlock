##############################
### ガリバーランド進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 15
###ゲームモード設定
tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
execute at @s run playsound minecraft:entity.firework.twinkle_far master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Gulliver's Land =","italic":"true","color":"gold"}
title @s title {"text":"ガリバーランド","color":"yellow","bold":"true","underlined":"true"}
