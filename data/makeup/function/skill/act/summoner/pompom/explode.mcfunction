#> makeup:skill/act/summoner/pompom/explode
execute if entity @e[distance=..8,tag=Enemy] run playsound minecraft:block.wood.break player @a ~ ~ ~ 5 1.2
summon minecraft:firework_rocket ^ ^ ^ {Silent:true,Life:1,LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",colors:[I;16711680,65280,255],fade_colors:[I;11141120,43520,170]}]}},count:1}}
playsound minecraft:entity.firework_rocket.blast player @a[distance=..48] ~ ~ ~ 4 1
playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..48] ~ ~ ~ 4 0.8
