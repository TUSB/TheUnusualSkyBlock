#Function
## プレイヤーの方を向く
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..3] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..3,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..3] run scoreboard players operation @s ParentID += _ _
execute at @s facing entity @a[gamemode=!creative,gamemode=!spectator,distance=..64,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute rotated as @s as @e[distance=..3,tag=NowTarget] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=NowTarget] remove NowTarget
