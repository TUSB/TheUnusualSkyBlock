#> ai:skill/change_status/level/
#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.Level.Add
execute store result score @s _ run data get storage mob_data: Call.Level.Range
execute unless score @s _ matches 0 run function ai:skill/common.range
execute if data storage mob_data: Call.Level.Set store result score @s Level run data get storage mob_data: Call.Level.Set
scoreboard players operation @s Level += @s Calc
#Limit
execute if data storage mob_data: Call.Level.Limit store result score @s _ run data get storage mob_data: Call.Level.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.Level.Limit run scoreboard players operation @s Level < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.Level.Limit run scoreboard players operation @s Level > @s _

function entity:spawn/apply_status/status/attack
function entity:spawn/apply_status/status/defense
function entity:spawn/apply_status/status/magic_attack
function entity:spawn/apply_status/status/magic_defense
function entity:spawn/apply_status/status/unreasonable_attack
function entity:spawn/apply_status/status/unreasonable_defense
#現在HPの補正
scoreboard players set _ _ 1000
scoreboard players operation @s HP *= _ _
scoreboard players operation @s HP /= @s HPMax
function entity:spawn/apply_status/status/hp
scoreboard players operation @s HP *= @s HPMax
scoreboard players operation @s HP /= _ _
#現在MPの補正
scoreboard players set _ _ 1000
scoreboard players operation @s MP *= _ _
scoreboard players operation @s MP /= @s MPMax
function entity:spawn/apply_status/status/mp
scoreboard players operation @s MP *= @s MPMax
scoreboard players operation @s MP /= _ _
#名前の修正
execute if entity @s[tag=!HideLevel] run function ai:skill/change_status/level/rename
