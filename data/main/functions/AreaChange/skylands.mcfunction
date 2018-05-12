#侵入処理
scoreboard players set @s Dimension 0
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
#アドべ処理
scoreboard players tag @s remove Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.firework.launch master @s[x=-53,y=23,z=-590,rm=3] ~ ~ ~ 4 0.5 0
title @s[x=-53,y=23,z=-590,rm=3] subtitle {"text":"= The Skylands =","italic":"true","color":"white"}
title @s[x=-53,y=23,z=-590,rm=3] title {"text":"通常世界","color":"gray","bold":"true","underlined":"true"}
