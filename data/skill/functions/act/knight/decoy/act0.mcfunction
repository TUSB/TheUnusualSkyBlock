
### デコイ発動

function makeup:skill/act/knight/decoy/act0

execute if score _ Level matches 1 as @e[tag=!Unmoved,distance=..10] unless entity @s[tag=!Enemy,tag=!Animal] run tp @s ~ ~ ~
execute if score _ Level matches 2 as @e[tag=!Unmoved,distance=..20] unless entity @s[tag=!Enemy,tag=!Animal] run tp @s ~ ~ ~
execute if score _ Level matches 3 as @e[tag=!Unmoved,distance=..30] unless entity @s[tag=!Enemy,tag=!Animal] run tp @s ~ ~ ~

execute as @e[tag=!Unmoved,distance=0] unless entity @s[tag=!Enemy,tag=!Animal] run tag @s add DelayedTask
execute as @e[tag=!Unmoved,distance=0] unless entity @s[tag=!Enemy,tag=!Animal] run tag @s add AvoidFalling
