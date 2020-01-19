scoreboard players reset $GenerateTick Global
#チェスト復元
execute as @e[tag=ChestPos,limit=1] positioned as @s run data modify block ~ ~ ~ Items set from entity @s ArmorItems[3].tag.Chest1
execute as @e[tag=ChestPos,limit=1] positioned as @s run data modify block ~ ~ ~-1 Items set from entity @s ArmorItems[3].tag.Chest2
kill @e[tag=TilePos]
