#> makeup:effect/freeze/fail
### 凍結 スキル失敗
tellraw @s [{"translate":"%1$sは%2$sにより体が動かない！","color":"red","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Freeze"}]}]
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 2 0.5
