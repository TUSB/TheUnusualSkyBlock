
execute if score @s _ matches ..24 run data modify storage calc: Text set value '[{"translate":"%1$s Hit!!","color":"yellow","bold":true,"with":[{"score":{"name":"@s","objective":"_"}}]}]'
execute if score @s _ matches 25.. run data modify storage calc: Text set value '[{"translate":"%1$s Hit!!","color":"gold","bold":true,"with":[{"score":{"name":"@s","objective":"_"}}]}]'
data modify storage calc: TextLength set value 4
title @s times 0 80 20
function calc:show_text/subtitle

playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 2 2
execute if score _ _ matches ..8 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
execute if score _ _ matches 9..16 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.8
execute if score _ _ matches 17..24 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 1.2
execute if score _ _ matches 25.. run playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:sweep_attack ^ ^0.2 ^1.3 0 0 0 2.5 2 force @a[tag=ShowParticles]
execute as @e[tag=MeleeTarget,limit=1] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0 0.5 0 1 5 force @a[tag=ShowParticles]
