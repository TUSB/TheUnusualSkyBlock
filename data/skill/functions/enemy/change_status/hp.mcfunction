#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.HP.Add
execute store result score @s _ run data get storage mob_data: Call.HP.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."最大HP"
execute if data storage mob_data: Call.HP.Set store result score _ Calc run data get storage mob_data: Call.HP.Set
scoreboard players operation _ Calc += @s Calc
#Limit
execute if data storage mob_data: Call.HP.Limit store result score @s _ run data get storage mob_data: Call.HP.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.HP.Limit run scoreboard players operation _ Calc < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.HP.Limit run scoreboard players operation _ Calc > @s _

execute store result storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" int 1 run scoreboard players get _ Calc
#現在HPの補正
scoreboard players operation @s _ = @s HPMax
function enemy:spawn/apply_status/status/hp
scoreboard players operation @s HP *= @s HPMax
scoreboard players operation @s HP /= @s _
