#Function
function skill:enemy/laser/main/damage
execute store result score _ Random run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ Random %= _ _
execute if score _ Random matches ..14 unless score @s PalsyLevel matches 0.. run tag @s add NowTarget
effect give @s[tag=NowTarget] invisibility 10 5 true
execute if entity @s[tag=NowTarget] at @s run particle dust 100000000 100000000 4 0.75 ~ ~1 ~ 0.4 0.75 0.4 0 30 force @a[distance=..32]
tag @s remove NowTarget
