#> makeup:skill/act/black_mage/ice_javelin/tick_head
#
# アイスジャベリン先頭演出

particle minecraft:firework ~ ~1.52 ~ 0.3 0.3 0.3 0.2 6 force @a[tag=ShowParticles]
execute as @a[distance=..32] at @s run playsound minecraft:block.glass.break player @s ^ ^64 ^ 7 2
