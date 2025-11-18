#> makeup:skill/act/hunter/decelerate_trap/act0
#
# ボミオストラップ 発動
playsound minecraft:block.piston.extend player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.lever.click player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.death player @a[distance=..16] ~ ~ ~ 1 0.6
particle minecraft:end_rod ~ ~ ~ 0 0.5 0 0.3 30 force
