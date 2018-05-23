##############################
### からくり上昇距離計算
##############################

###上昇可能距離を算出する
execute store result score $CrimbingGap PuppetScore run data get entity @e[tag=ActiveDownSearcher,limit=1] Pos[1] 100
execute store result score $CrimbingBase PuppetScore run data get entity @e[tag=ActivePuppet,limit=1] Pos[1] 100
scoreboard players operation $CrimbingGap PuppetScore -= $CrimbingBase PuppetScore
