#> makeup:skill/act/hunter/wild_flare/failed
#
# ワイルドフレア失敗演出
playsound minecraft:block.fire.extinguish player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:dust{color:[0,0,0],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 1 10 force @a[tag=ShowParticles]
