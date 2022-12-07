#Function
playsound minecraft:item.trident.return hostile @a[distance=..32] ~ ~ ~ 2 0 0.1
#初期実行
function calc:set/random_rotation
data modify entity @s Rotation[1] set value 0f
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=BlackGrudge_C,distance=..16] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=BlackGrudge_C,distance=..16,scores={OhMyDatID=0}] run tag @s add NowTarget
execute as @e[tag=BlackGrudge_C,distance=..16] run scoreboard players operation @s OhMyDatID += _ _
execute unless entity @e[tag=NowTarget] run data modify storage mob_data: Tags append value Garbage
execute if entity @e[tag=NowTarget,limit=1] positioned as @e[tag=NowTarget] positioned ^ ^ ^3 facing entity @e[tag=NowTarget] feet run tp @s ^ ^ ^ ~ 0
execute as @e[tag=NowTarget] run tag @s remove NowTarget
