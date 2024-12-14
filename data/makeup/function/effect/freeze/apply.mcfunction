#> makeup:effect/freeze/apply
### 凍結 メッセージ
tellraw @s [{"translate":"%1$sは%2$sした！","color":"red","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Freeze"}]}]

# 氷 凍結
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 2 1.5 1
execute positioned ~-1 ~-1 ~-1 run particle item_snowball ~ ~ ~ 2 3 2 1.5 30 force @a[tag=ShowParticles]
