##############################
### ワイルドクッキング失敗演出
##############################

###---演出---Start
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
title @s times 0 40 20
title @s title [{"text":"","color":"yellow"},"調理失敗…"]
###---演出---End

scoreboard players set $Give Global 1
