#侵入処理
scoreboard players tag @s add IgnoreEnderChest
scoreboard players tag @e[name=テーブルマウンテン,type=minecraft:area_effect_cloud,tag=!Enter] add Enter
#アドべ処理
scoreboard players tag @s add Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.elder_guardian.ambient master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Table Mountain =","italic":"true","color":"dark_green"}
title @s title {"text":"テーブルマウンテン","color":"green","bold":"true","underlined":"true"}
