### リセット
scoreboard players operation * ParentID -= @s OhMyDatID
kill @e[tag=BurstCommand,scores={ParentID=0}]
scoreboard players operation * ParentID += @s OhMyDatID

scoreboard players reset @s Burst
