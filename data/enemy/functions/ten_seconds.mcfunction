##############################
### モブ10秒処理
##############################

#変身防止
execute unless entity @s[type=!zombie,type=!husk] run data modify entity @s InWaterTime set value 0
execute if data entity @s[type=skeleton] StrayConversionTime run data modify entity @s StrayConversionTime set value 600
