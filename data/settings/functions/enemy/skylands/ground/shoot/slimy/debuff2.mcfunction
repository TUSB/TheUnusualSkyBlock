#Function
playsound minecraft:block.respawn_anchor.deplete_1 hostile @s ~ ~ ~ 1.0 0.25
playsound minecraft:entity.slime.jump hostile @s ~ ~ ~ 1.5 0
playsound minecraft:entity.slime.jump hostile @s ~ ~ ~ 1.5 0.1
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @s mining_fatigue 10 0 false
execute if score _ Random matches 1 run effect give @s slowness 10 1 false
