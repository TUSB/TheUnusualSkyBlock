#> makeup:effect/freeze/cure
### 凍結 解除メッセージ
tellraw @s [{"translate":"%1$sの%2$sがすべて融けた！","color":"green","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Freeze"}]}]

# 氷 解凍
playsound minecraft:block.glass.break player @a[distance=..16] ~ ~ ~ 2 0 1
execute positioned ~-1 ~-1 ~-1 run particle item_snowball ~ ~ ~ 2 3 2 1.5 30 force @a
