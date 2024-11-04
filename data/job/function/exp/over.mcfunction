#> job:exp/over
#もし、プレイヤーの総獲得経験値 > ワールドの総獲得経験値 になったら、
#経験値は (ワールドの総獲得経験値 - プレイヤーの総獲得経験値) になる。

#ボーナス込みの経験値を仮で足してチェックする
scoreboard players operation @s Calc = @s AllExp
scoreboard players operation @s Calc += @s _
scoreboard players operation @s Calc -= $World AllExp

#if プレイヤーの総獲得経験値 > ワールドの総獲得経験値
#超過した分を経験値から減らす
execute if score @s Calc matches 1.. run scoreboard players operation @s _ -= @s Calc
