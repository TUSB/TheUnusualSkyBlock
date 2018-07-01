##############################
### はやぶさ斬り待機
##############################

###HP再取得
execute positioned ^ ^ ^5 as @e[distance=..6,tag=Mob] store result score @s FalconHP run data get entity @s AbsorptionAmount 10
