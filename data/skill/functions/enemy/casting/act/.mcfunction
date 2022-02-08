scoreboard players add @s CastingTick 1
###一時的な処理を継続するかどうか 1のとき継続　0なら終了 "00000000-0000-0000-0000-000000000000 _"
scoreboard players set 00000000-0000-0000-0000-000000000000 _ 1
execute if score @s CastingTick >= @s NextCastingTick run function skill:enemy/casting/act/check/
execute if score 00000000-0000-0000-0000-000000000000 _ matches 0 run function skill:enemy/casting/act/bit_drop