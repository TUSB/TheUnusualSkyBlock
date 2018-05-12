#侵入処理
scoreboard players set @s Dimension 110
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
#アドべ処理
scoreboard players tag @s add Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.zombie.unfect master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The End =","italic":"true","color":"gray"}
title @s title {"text":"ジ・エンド","color":"black","bold":"true","underlined":"true"}