##############################
### 状態異常回復レベル２
##############################

effect clear @s minecraft:blindness
effect clear @s minecraft:hunger
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:slowness
effect clear @s minecraft:darkness

# マイナスエフェクト消去
execute if data entity @s ActiveEffects[{Id:1}] store result score _ _ run data get entity @s ActiveEffects[{Id:1}].Amplifier
execute if data entity @s ActiveEffects[{Id:1}] if score _ _ matches ..-1 run effect clear @s speed
execute if data entity @s ActiveEffects[{Id:3}] store result score _ _ run data get entity @s ActiveEffects[{Id:3}].Amplifier
execute if data entity @s ActiveEffects[{Id:3}] if score _ _ matches ..-1 run effect clear @s haste
execute if data entity @s ActiveEffects[{Id:8}] store result score _ _ run data get entity @s ActiveEffects[{Id:8}].Amplifier
execute if data entity @s ActiveEffects[{Id:8}] if score _ _ matches ..-1 run effect clear @s jump_boost

function skill:act/white_mage/clear/cure/level1
