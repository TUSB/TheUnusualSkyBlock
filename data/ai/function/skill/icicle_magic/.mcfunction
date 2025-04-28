#> ai:skill/icicle_magic/
summon area_effect_cloud ~ ~ ~ {Tags:["IcicleSummoner"],Duration:4,Radius:0f,Particle:"minecraft:block minecraft:air"}
schedule function ai:skill/icicle_magic/schedule_loop/icicle_summoner 1t replace
