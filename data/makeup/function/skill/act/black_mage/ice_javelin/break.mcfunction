#> makeup:skill/act/black_mage/ice_javelin/break
#
# アイスジャベリン消滅演出

particle minecraft:block{block_state:"minecraft:ice"} ~ ~ ~ 0.3 0.3 0.3 1 10 force
execute as @a[distance=..32] run stopsound @s player minecraft:block.glass.break
execute as @a[distance=..32] at @s run playsound minecraft:block.glass.break player @s ~ ~64 ~ 8 0.5
