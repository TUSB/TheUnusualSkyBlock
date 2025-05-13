#> ai:skill/icicle_magic/schedule_loop/icicle
execute as @e[tag=Icicle] at @s positioned ~-0.4 ~0.7 ~0.075 run function ai:skill/icicle_magic/icicle/
execute if entity @e[tag=Icicle,limit=1] run schedule function ai:skill/icicle_magic/schedule_loop/icicle 1t replace
