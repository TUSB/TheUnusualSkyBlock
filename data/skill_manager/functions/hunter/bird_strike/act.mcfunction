##############################
### バードストライク発動
##############################

###バードストライク反映
execute positioned ~ ~1.52 ~ run data merge entity @e[distance=..5,type=arrow,tag=!Initialized,limit=1] {Tags:[BirdStrike]}
###MP消費
scoreboard players operation @s MPConsumption += @s ModeCost
