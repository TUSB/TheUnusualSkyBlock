#Function
playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=..32] ~ ~ ~ 1.5 1.8
playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=..32] ~ ~ ~ 1.5 1.75
playsound minecraft:ambient.nether_waste.mood_3 hostile @a[distance=..32] ~ ~ ~ 0.25 2
playsound minecraft:block.amethyst_block.hit hostile @a[distance=..32] ~ ~ ~ 2.0 0
# 円
particle scrape ~-0.0 ~0.0 ~0.25 ~-4.97 ~0.0 ~1000000000.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~0.12 ~0.0 ~0.22 ~500000000.0 ~0.0 ~866025408.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~0.22 ~0.0 ~0.12 ~866025408.0 ~0.0 ~500000000.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~0.25 ~0.0 ~0.0 ~1000000000.0 ~0.0 ~4.97 0.00000000825 0 force @a[distance=..32]
particle scrape ~0.22 ~0.0 ~-0.12 ~866025408.0 ~0.0 ~-500000000.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~0.12 ~0.0 ~-0.22 ~500000000.0 ~0.0 ~-866025408.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~-0.0 ~0.0 ~-0.25 ~-4.97 ~0.0 ~-1000000000.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~-0.12 ~0.0 ~-0.22 ~-500000000.0 ~0.0 ~-866025408.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~-0.22 ~0.0 ~-0.12 ~-866025408.0 ~0.0 ~-500000000.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~-0.25 ~0.0 ~0.0 ~-1000000000.0 ~0.0 ~4.97 0.00000000825 0 force @a[distance=..32]
particle scrape ~-0.22 ~0.0 ~0.12 ~-866025408.0 ~0.0 ~500000000.0 0.00000000825 0 force @a[distance=..32]
particle scrape ~-0.12 ~0.0 ~0.22 ~-500000000.0 ~0.0 ~866025408.0 0.00000000825 0 force @a[distance=..32]
# ダスト
particle dust 0.65 1.000 0.75 0.75 ~ ~ ~ 0.25 0.25 0.25 1 20 force @a[distance=..32]
