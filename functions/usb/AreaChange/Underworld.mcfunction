#侵入処理
scoreboard players set @s Dimension 14
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
scoreboard players tag @e[name=地下世界,type=minecraft:area_effect_cloud,tag=!Enter] add Enter
#アドべ処理
scoreboard players tag @s add Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.wither.spawn master @s ~ ~ ~ 0.6 0.7 0
title @s subtitle {"text":"= The Underworld =","italic":"true","color":"dark_gray"}
title @s title {"text":"地下世界","color":"dark_blue","bold":"true","underlined":"true"}