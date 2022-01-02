##ListSizeGet "_ Calc"
scoreboard players set _ Calc 0
execute store result score _ Calc run data get storage mob_data: Casting
###すでにリストに追加済みかどうか "00000000-0000-0000-0000-000000000000 _"
scoreboard players set 00000000-0000-0000-0000-000000000000 _ 0

execute if score _ Calc matches 0 run function skill:enemy/casting/append/act

###LoopCountSet "@s Calc"
scoreboard players set @s Calc 1
execute if score _ Calc matches 1.. run function skill:enemy/casting/append/loop