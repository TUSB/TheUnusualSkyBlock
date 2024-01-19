execute if data entity @s[y=0,dy=255] {Dimension:"area:debug_room"} run spawnpoint @s ~ ~ ~
execute unless data entity @s {Dimension:"area:debug_room"} run function tutorial_alpha:system/issue_178