##############################
### 状態異常回復レベル１
##############################

effect clear @s minecraft:nausea
effect clear @s minecraft:poison
effect clear @s minecraft:weakness
effect clear @s minecraft:wither
effect clear @s minecraft:levitation

# マイナスエフェクト消去
execute if data entity @s ActiveEffects[{Id:5}] store result score _ _ run data get entity @s ActiveEffects[{Id:5}].Amplifier
execute if data entity @s ActiveEffects[{Id:5}] if score _ _ matches ..-1 run effect clear @s strength
execute if data entity @s ActiveEffects[{Id:11}] store result score _ _ run data get entity @s ActiveEffects[{Id:11}].Amplifier
execute if data entity @s ActiveEffects[{Id:11}] if score _ _ matches ..-1 run effect clear @s resistance
