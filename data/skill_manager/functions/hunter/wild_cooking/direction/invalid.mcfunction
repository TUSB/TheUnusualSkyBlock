##############################
### ワイルドクッキングエラー
##############################

###---演出---Start
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
title @s times 0 40 20
title @s title [{"text":"","color":"red"},"？ ？ ？"]
tellraw @a [{"text":"","color":"yellow"},"調理できなかった…"]
###---演出---End
