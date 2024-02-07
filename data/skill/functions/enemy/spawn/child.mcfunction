execute store result storage mob_data: ParentID int 1 run scoreboard players get @s OhMyDatID
data modify storage mob_data: Call.SpawnEntities[][].ParentID set from storage mob_data: ParentID
tag @s add Parent