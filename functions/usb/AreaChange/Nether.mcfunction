#侵入処理
scoreboard players set @s Dimension -100
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
#アドべ処理
scoreboard players tag @s remove Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.blaze.shoot master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The Nether =","italic":"true","color":"dark_red"}
title @s title {"text":"ネザー","color":"red","bold":"true","underlined":"true"}
