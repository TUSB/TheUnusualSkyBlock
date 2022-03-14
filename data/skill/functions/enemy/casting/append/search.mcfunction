##ListSizeGet "_ Calc"
##Loop最大回数を設定
#scoreboard players set _ Calc 0
#execute store result score _ Calc run data get storage mob_data: Casting
execute store result storage mob_data: AddingCast.LoopCount int 1 run data get storage mob_data: Casting
###すでにリストに追加済みかどうか "00000000-0000-0000-0000-000000000000 _"
#scoreboard players set 00000000-0000-0000-0000-000000000000 _ 0
data modify storage mob_data: AddingCast.IsAdded set value false

execute if data storage mob_data: AddingCast{LoopCount:0} run function skill:enemy/casting/append/act

###LoopCountSet "@s Calc"
scoreboard players set @s Calc 1
execute unless data storage mob_data: AddingCast{LoopCount:0} run function skill:enemy/casting/append/loop



data remove storage mob_data: AddingCast