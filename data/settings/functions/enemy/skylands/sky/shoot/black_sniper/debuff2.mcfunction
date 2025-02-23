#Function
# 高確率でデバフ
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..40 run effect give @s invisibility 5 3 true
# 確定で地面にAEC召喚
    execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Initialized"],Particle:"flame",Radius:0.5f,Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:32b,duration:6,show_particles:1b}]}
