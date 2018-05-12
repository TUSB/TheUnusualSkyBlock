#侵入処理
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
#アドべ処理
scoreboard players tag @s add Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound block.portal.trigger master @s ~ ~ ~ 0.6 0.8 0
title @s subtitle {"text":"= Nether Trial =","italic":"true","color":"black"}
title @s title {"text":"ネザーアスレ","color":"dark_red","bold":"true","underlined":"true"}
