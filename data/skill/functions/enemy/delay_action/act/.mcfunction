scoreboard players add @s ActionTick 1
###一時的な処理を継続するかどうか 1のとき継続　0なら終了 "00000000-0000-0000-0000-000000000000 _"
scoreboard players set 00000000-0000-0000-0000-000000000000 _ 1
execute if score @s ActionTick >= @s NextActionTick run function skill:enemy/delay_action/act/check/
execute if score 00000000-0000-0000-0000-000000000000 _ matches 0 run function skill:enemy/delay_action/act/bit_drop