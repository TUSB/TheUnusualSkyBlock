###現在の要素
execute store result score @s _ run data get storage mob_data: Casting[0].NextAction

###挿入
execute if score @s _ > _ _ if score 00000000-0000-0000-0000-000000000000 _ matches 0 run function skill:enemy/casting/append/act



###一巡しても追加されてない場合は最後尾に追加
execute if score @s Calc = _ Calc if score 00000000-0000-0000-0000-000000000000 _ matches 0 run function skill:enemy/casting/append/act

scoreboard players add @s Calc 1
execute if score @s Calc < _ Calc run function skill:enemy/casting/append/shift

execute if score @s Calc <= _ Calc run function skill:enemy/casting/append/loop