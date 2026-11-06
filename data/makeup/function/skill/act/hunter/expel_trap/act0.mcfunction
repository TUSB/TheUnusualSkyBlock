#> makeup:skill/act/hunter/expel_trap/act0
#
# ニフラムトラップ発動演出
playsound minecraft:block.piston.extend player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.lever.click player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.evoker.prepare_summon player @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:end_rod ~ ~ ~ 0 0.5 0 0.3 30 force
