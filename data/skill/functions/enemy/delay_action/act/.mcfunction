scoreboard players add @s ActionTick 1
###一時的な処理を継続するかどうか NextActionTickが1以上なら継続
execute if score @s ActionTick >= @s NextActionTick run function skill:enemy/delay_action/act/check/
execute unless score @s NextActionTick matches 1.. run function skill:enemy/delay_action/act/bit_drop