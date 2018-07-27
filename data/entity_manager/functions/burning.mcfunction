##############################
### 常に炎上処理
##############################

data merge entity @s {Fire:32767s}
effect give @s minecraft:glowing 1 0 true
playsound minecraft:entity.generic.extinguish_fire master @a[distance=..16] ~ ~ ~ 0.5 2
particle minecraft:smoke ~ ~ ~ 0.4 0 0.4 0.1 10 force
