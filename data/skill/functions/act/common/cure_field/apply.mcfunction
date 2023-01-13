
##############################
### キュアフィールド効果付与
##############################

#空腹デバフ解除
effect clear @s minecraft:hunger

#MP回復
scoreboard players operation @s MP += _ _
scoreboard players operation @s MP < @s MPMax
