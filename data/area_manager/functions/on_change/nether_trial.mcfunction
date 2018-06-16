##############################
### ネザーアスレ進入時処理
##############################

###インベントリチェック
tag @s[nbt={Inventory:[{}]}] add ContainsItem
tp @s[tag=ContainsItem] -3 4 -621 180 -20
tellraw @s[tag=ContainsItem] {"text":"アイテム持ち込み禁止エリアです！","color":"red","bold":"true"}

###ディメンションスコア設定
scoreboard players set @s[tag=!ContainsItem] Dimension 20
###ゲームモード設定
tag @s[tag=!ContainsItem] add Adv
###共通処理
function area_manager:on_change/common
###---演出---Start
execute at @s run playsound minecraft:block.portal.trigger master @s[tag=!ContainsItem] ~ ~ ~ 0.6 0.8 0
title @s[tag=!ContainsItem] subtitle {"text":"= Nether Trial =","italic":"true","color":"black"}
title @s[tag=!ContainsItem] title {"text":"ネザーアスレ","color":"dark_red","bold":"true","underlined":"true"}
###---演出---End

tag @s remove ContainsItem
