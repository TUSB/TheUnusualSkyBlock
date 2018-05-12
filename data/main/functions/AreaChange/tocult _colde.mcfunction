#侵入処理
scoreboard players set @s Dimension 13
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
scoreboard players tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest
scoreboard players tag @e[name=トカルトコルデ,type=minecraft:area_effect_cloud,tag=!Enter] add Enter
tellraw @a[tag=!ISFTorch] [{"text":"[辺境調査員] おや？ 他の島からかい？ 珍しいねぇ。\n これを持ってお行き。\n ここは寒さが厳しいからね。凍え死んじまうよ。\n"},{"translate":"* %1$s を64個受け取った。","with":[{"text":"松明","color":"aqua"}]},{"translate":"\n[辺境調査員] %2$sは%1$sで付け直せるからね。\n %3$sが減ったら%1$sのあるところまで戻るんだよ。","with":[{"text":"篝火","color":"gold"},{"text":"消えた松明","color":"aqua"},{"text":"松明","color":"aqua"}]}]
give @a[tag=!ISFTorch] minecraft:torch 64
scoreboard players tag @a[tag=!ISFTorch] add ISFTorch
#アドべ処理
scoreboard players tag @s add Adv
#共通処理
function usb:AreaChange/Common
#表示処理
playsound entity.zombie_horse.death master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Ice Sheet Float =","italic":"true","color":"dark_aqua"}
title @s title {"text":"トカルトコルデ","color":"aqua","bold":"true","underlined":"true"}
