playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.puffer_fish.blow_up master @a[distance=..16] ~ ~ ~ 1 0.7
execute if score @s FillSize matches 1 run particle minecraft:entity_effect ~ ~0.05 ~ 0.2 0 0.2 1 5 force
execute if score @s FillSize matches 2 run particle minecraft:entity_effect ~ ~0.05 ~ 0.6 0 0.6 1 15 force
execute if score @s FillSize matches 3 run particle minecraft:entity_effect ~ ~0.05 ~ 1 0 0 1 20 force
execute if score @s FillSize matches 4 run particle minecraft:entity_effect ~ ~0.05 ~ 1.5 0 1.5 1 40 force
execute if score @s FillSize matches 5 run particle minecraft:entity_effect ~ ~0.05 ~ 2.0 0 2.0 1 50 force
execute if score @s FillSize matches 6 run particle minecraft:entity_effect ~ ~0.05 ~ 2.5 0 2.5 1 70 force
