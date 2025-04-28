#> ai:skill/change_status/magic_defense
#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.MagicDefence.Add
execute store result score @s _ run data get storage mob_data: Call.MagicDefence.Range
execute unless score @s _ matches 0 run function ai:skill/change_move/range
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力"
execute if data storage mob_data: Call.MagicDefence.Set store result score _ Calc run data get storage mob_data: Call.MagicDefence.Set
scoreboard players operation _ Calc += @s Calc
#Limit
execute if data storage mob_data: Call.MagicDefence.Limit store result score @s _ run data get storage mob_data: Call.MagicDefence.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.MagicDefence.Limit run scoreboard players operation _ Calc < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.MagicDefence.Limit run scoreboard players operation _ Calc > @s _

execute store result storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" int 1 run scoreboard players get _ Calc
function entity:spawn/apply_status/status/magic_defense
