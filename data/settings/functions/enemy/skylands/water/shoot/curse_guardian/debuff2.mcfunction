#Function
# 凍結 or 鈍足 + 呪詛
    playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~ 1 0
    playsound minecraft:entity.puffer_fish.blow_out hostile @s ~ ~ ~ 1 0
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 2
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0 run effect give @s invisibility 10 4 true
    execute if score _ Random matches 1 run effect give @s slowness 15 4 true
