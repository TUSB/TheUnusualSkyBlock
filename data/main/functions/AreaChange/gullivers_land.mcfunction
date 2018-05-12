#侵入処理
scoreboard players set @s Dimension 12
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
scoreboard players tag @e[name=ガリバーランド,type=minecraft:area_effect_cloud,tag=!Enter] add Enter
#アドべ処理
scoreboard players tag @s add Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.firework.twinkle_far master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Gulliver's Land =","italic":"true","color":"gold"}
title @s title {"text":"ガリバーランド","color":"yellow","bold":"true","underlined":"true"}
