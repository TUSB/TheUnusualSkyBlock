### リセット
scoreboard players operation @e[tag=BurstCommand] ParentID -= @s OhMyDatID
kill @e[tag=BurstCommand,scores={ParentID=0}]
scoreboard players operation @e[tag=BurstCommand] ParentID += @s OhMyDatID

scoreboard players reset @s Burst
