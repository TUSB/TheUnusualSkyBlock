
### ふかふか展開

function makeup:skill/act/summoner/fukafuka/expand

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",Tags:[Skill,Initializing,Cage,NativeTask],Duration:200}
execute store result entity @e[distance=..0.1,tag=Initializing,limit=1] Duration int 1 run scoreboard players get @s Interval

kill @s
