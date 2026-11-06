#> makeup:skill/act/hunter/expel_trap/apply
#
# ニフラムトラップ適用演出
playsound minecraft:entity.axolotl.death player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.deactivate player @a[distance=..16] ~ ~ ~ 0.5 2
particle minecraft:wax_on ~ ~1 ~ 0.2 0.2 0.2 10 30 force
particle minecraft:witch ~ ~ ~ 0.4 0.4 0.4 1 30 force
