#> makeup:skill/act/summoner/summon_element_pixely/act1
#
# 演出
#
# @within function skill:act/summoner/summon_element_pixely/act1

playsound entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 2
playsound ambient.crimson_forest.shine_1 master @a[distance=..16] ~ ~ ~ 1 2
playsound ambient.nether_waste.mood_3 master @a[distance=..16] ~ ~ ~ 1 2
particle end_rod ~ ~1 ~ 0.6 1 0.6 0.01 25 force
particle instant_effect ~ ~0.1 ~ 0 0 0 1 80 force