#> makeup:ai/skill/icicle_magic/icicle_fall
playsound block.chain.break hostile @a[distance=..16] ~ ~ ~ 2.0 1.9
playsound minecraft:block.glass.break hostile @a[distance=..16] ~ ~ ~ 2 1.5
execute align y run particle minecraft:block{block_state:{Name:"minecraft:blue_ice"}} ~ ~1.3 ~ 0.2 0.2 0.2 0 40 normal
