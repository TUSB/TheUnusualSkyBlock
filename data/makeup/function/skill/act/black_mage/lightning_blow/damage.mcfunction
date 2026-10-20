#> makeup:skill/act/black_mage/lightning_blow/damage

particle minecraft:dust{color:[1f,1f,0f],scale:2.2f} ~ ~10 ~ 0.15 5 0.15 0 100 force
particle minecraft:end_rod ~ ~10 ~ 0.15 5 0.15 0 15 force
particle minecraft:item{item:"minecraft:horn_coral_block"} ~ ~ ~ 0 0 0 0.4 100 force
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 2 2
