
### デコイ発動

function makeup:skill/act/knight/decoy/act0

execute if score _ Level matches 1 as @e[distance=..10] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
execute if score _ Level matches 2 as @e[distance=..20] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
execute if score _ Level matches 3 as @e[distance=..30] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~

execute as @e[distance=0] unless entity @s[tag=!Mob,tag=!Animal] run tag @s add DelayedTask
execute as @e[distance=0] unless entity @s[tag=!Mob,tag=!Animal] run tag @s add AvoidFalling
