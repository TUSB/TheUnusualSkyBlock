#> ai:skill/icicle_magic/schedule_loop/icicle_summoner
execute as @e[tag=IcicleSummoner] at @s run function ai:skill/icicle_magic/icicle_summoner/
execute if entity @e[tag=IcicleSummoner,limit=1] run schedule function ai:skill/icicle_magic/schedule_loop/icicle_summoner 1t
