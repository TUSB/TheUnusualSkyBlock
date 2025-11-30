#> makeup:skill/act/white_mage/cure/apply
#
# ケアル発動演出

playsound minecraft:entity.player.levelup player @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:entity.player.levelup player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.chime player @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:heart ~ ~0.1 ~ 0.7 0.1 0.7 0 10 force
particle minecraft:happy_villager ~ ~0.3 ~ 0.5 0.3 0.5 0 20 force
