scoreboard players set @s _ 0
function #oh_my_dat:please
execute store result score @s _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Blink.Count
scoreboard players operation _ _ += @s _