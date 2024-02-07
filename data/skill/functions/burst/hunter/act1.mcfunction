summon arrow ~ ~ ~ {Tags:[BurstArrow],crit:1b,pickup:2,PierceLevel:1,HasBeenShot:1b,Color:14721572}

execute in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^3 run function calc:geometry/tp_00000
data modify entity @e[tag=BurstArrow,tag=!Initialized,distance=0,limit=1] Motion set from entity 0-0-0-0-0 Pos

execute store result entity @e[tag=BurstArrow,tag=!Initialized,distance=0,limit=1] damage double 0.5 run scoreboard players get _ _
data modify entity @e[tag=BurstArrow,tag=!Initialized,distance=0,limit=1] Owner set from entity @s UUID

tag @s remove BurstArrow

function makeup:skill/burst/burst_arrow
