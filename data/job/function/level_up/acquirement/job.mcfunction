#> job:level_up/acquirement/job
### スキル習得 職業分岐

execute store result storage job: level.value int 1 run scoreboard players add _ Level 1

execute if score @s Job matches 1 run data modify storage skill: Data.Job set from storage skill: Data.Knight
execute if score @s Job matches 2 run data modify storage skill: Data.Job set from storage skill: Data.Ninja
execute if score @s Job matches 3 run data modify storage skill: Data.Job set from storage skill: Data.Hunter
execute if score @s Job matches 4 run data modify storage skill: Data.Job set from storage skill: Data.WhiteMage
execute if score @s Job matches 5 run data modify storage skill: Data.Job set from storage skill: Data.BlackMage
execute if score @s Job matches 6 run data modify storage skill: Data.Job set from storage skill: Data.Summoner
execute if score @s Job matches 7 run data modify storage skill: Data.Job set from storage skill: Data.PuppetMaster
execute if score @s Job matches 8 run data modify storage skill: Data.Job set from storage skill: Data.Thief

execute if score @s Job matches 1..8 run function job:level_up/acquirement/level

data modify storage skill: Data.Job set from storage skill: Data.Common

function job:level_up/acquirement/level

execute if score _ Level < @s Level run function job:level_up/acquirement/job
