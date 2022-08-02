execute store result storage mob_data: ParentID int 1 run scoreboard players get @s OhMyDatID
data modify storage mob_data: Call.SpawnEntities[][].ParentID set from storage mob_data: ParentID
tag @s add Parent
tellraw @a [{"text":"Ohmydat : "},{"score":{"name":"@s","objective":"OhMyDatID"}}]
#tellraw @a [{"text":"mob_data: "},{"nbt":"Call","storage":"mob_data:"}]