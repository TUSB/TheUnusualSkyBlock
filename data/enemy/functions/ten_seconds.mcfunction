##############################
### モブ10秒処理
##############################

#変身防止
execute unless entity @s[type=!zombie,type=!husk] run data modify entity @s[nbt=!{InWaterTime:-1}] InWaterTime set value 0
data modify entity @s[type=skeleton,nbt=!{StrayConversionTime:-1}] StrayConversionTime set value 600
