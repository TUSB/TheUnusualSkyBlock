
##############################
### キュアフィールド効果付与
##############################

#空腹デバフ解除
effect clear @s minecraft:hunger

#MP回復 重複しない
scoreboard players operation _ Calc = _ _
scoreboard players operation _ Calc -= @s MPHealingWait
scoreboard players operation _ Calc > _ _
execute if score _ Calc matches ..-1 run scoreboard players operation @s MP -= _ Calc
execute if score _ Calc matches ..-1 run scoreboard players operation @s MP < @s MPMax
execute if score _ Calc matches ..-1 run function player:mp_bar/set
scoreboard players operation @s MPHealingWait < _ _
