##############################
### テーブルマウンテン進入時処理
##############################

###インベントリチェック
tag @s[nbt={Inventory:[{}]}] add ContainsItem
tag @s[nbt={EnderItems:[{}]}] add ContainsItem
tp @s[tag=ContainsItem] 134 52 -452 180 0
tellraw @s[tag=ContainsItem] {"text":"エンダーチェスト内を含む\nアイテム持ち込み禁止エリアです！","color":"red","bold":"true"}

###ディメンション設定
scoreboard players set @s[tag=!ContainsItem] Dimension 13
###ゲームモード設定
tag @s[tag=!ContainsItem] add Adv
###共通処理
function area_manager:on_change/common
###エンダーチェストOpenedリセットフラグ
tag @s[tag=!ContainsItem] add ResetEnderChest
###移動演出処理
execute at @s run playsound minecraft:entity.elder_guardian.ambient master @s[tag=!ContainsItem] ~ ~ ~ 4 0.5 0
title @s[tag=!ContainsItem] subtitle {"text":"= Table Mountain =","italic":"true","color":"dark_green"}
title @s[tag=!ContainsItem] title {"text":"テーブルマウンテン","color":"green","bold":"true","underlined":"true"}

tag @s remove ContainsItem
