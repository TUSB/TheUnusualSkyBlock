##############################
### トカルトコルデ進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 16
###ゲームモード設定
scoreboard players tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.zombie_horse.death master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Tocult Colde =","italic":"true","color":"dark_aqua"}
title @s title {"text":"トカルトコルデ","color":"aqua","bold":"true","underlined":"true"}
