#> entity:kill_child
scoreboard players operation _ ParentID = @s OhMyDatID
execute as @e[scores={ParentID=0..}] if score @s ParentID = _ ParentID run tag @s add Garbage
