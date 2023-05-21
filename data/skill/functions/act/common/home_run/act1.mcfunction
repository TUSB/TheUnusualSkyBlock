
scoreboard players add @s[tag=!HomeRun] NativeFlag 1
tag @s add Skill
tag @s add HomeRun

data modify entity @s OnGround set value 0b
execute rotated ~ -35 positioned 0.0 0.0 0.0 positioned ^ ^ ^2.6 run function calc:throw_projectile/
