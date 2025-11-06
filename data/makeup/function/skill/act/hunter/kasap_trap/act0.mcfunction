#> makeup:skill/act/hunter/kasap_trap/act0
#
# ルカナントラップ発動
playsound minecraft:block.piston.extend player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.lever.click player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.conduit.deactivate player @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:end_rod ~ ~ ~ 0 0.5 0 0.3 30 force
