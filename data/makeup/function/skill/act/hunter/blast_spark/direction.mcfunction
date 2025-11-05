#> makeup:skill/act/hunter/blast_spark/direction
#
# ブラストスパークtick演出

particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force @a[tag=ShowParticles]
particle minecraft:dust{color:16777215,scale:0.2} 0.5 ~ ~ ~ 0.2 0.2 0 6 force @a[tag=ShowParticles]
execute as @a[distance=..16] run playsound minecraft:item.trident.return player @s ~ ~64 ~ 8 2
