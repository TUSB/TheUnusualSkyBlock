#> makeup:skill/act/summoner/kana_tarai/act0
playsound minecraft:entity.blaze.shoot player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:item.trident.throw player @a[distance=..32] ~ ~ ~ 1 1
execute as @e[distance=..15,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:entity_effect{color:-1} ~ ~2 ~ 0.5 0.5 0.5 1 15 force
execute as @e[distance=..15,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~2 ~ 0.5 0.5 0.5 0.1 5 force
