#Function
execute at @a[distance=..4,predicate=entity:player] run function settings:enemy/skylands/sky/shoot/impure_skull/doom_summon2
execute if entity @s[tag=!NowTarget] facing entity @a[distance=..16,predicate=entity:player,sort=nearest,limit=1] eyes positioned ^ ^ ^4 run function settings:enemy/skylands/sky/shoot/impure_skull/doom_summon2
