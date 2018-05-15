##############################
### トカルトコルデ進入時処理
##############################

###ディメンションスコア設定
scoreboard players set @s Dimension 16
###ゲームモード設定
tag @s add Adv
###共通処理
function area_manager:on_change/common
###移動時演出処理
playsound minecraft:entity.zombie_horse.death master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Tocult Colde =","italic":"true","color":"dark_aqua"}
title @s title {"text":"トカルトコルデ","color":"aqua","bold":"true","underlined":"true"}
###初回松明give処理
tellraw @s[tag=!TorchRecieved] [{"text":"[辺境調査員] おや？ 他の島からかい？ 珍しいねぇ。\n これを持ってお行き。\n ここは寒さが厳しいからね。凍え死んじまうよ。\n"},{"translate":"* %1$s を64個受け取った。","with":[{"text":"松明","color":"aqua"}]},{"translate":"\n[辺境調査員] %2$sは%1$sで付け直せるからね。\n %3$sが減ったら%1$sのあるところまで戻るんだよ。","with":[{"text":"篝火","color":"gold"},{"text":"消えた松明","color":"aqua"},{"text":"松明","color":"aqua"}]}]
give @s[tag=!TorchRecieved] minecraft:torch 64
tag @s[tag=!TorchRecieved] add TorchRecieved