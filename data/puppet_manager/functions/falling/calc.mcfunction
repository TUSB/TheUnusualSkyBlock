##############################
### からくり落下距離計算
##############################

###村人のFallDistanceを算出
execute store result score $FallVillager Global run data get entity @e[distance=0,tag=PuppetNext,limit=1] FallDistance 10000
scoreboard players remove $FallVillager Global 10000
###パペットのFallDistanceを算出
execute store result score $FallPuppet Global run data get entity @e[tag=ActivePuppet,limit=1] FallDistance 10000
###パペットの合計FallDistanceを算出
execute store result entity @e[tag=ActivePuppet,limit=1] FallDistance float 0.0001 run scoreboard players operation $FallPuppet Global += $FallVillager Global
