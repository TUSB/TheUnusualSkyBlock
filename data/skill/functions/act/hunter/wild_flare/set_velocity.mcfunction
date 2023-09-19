
### ワイルドフレアMotion付与

function skill:damage/save
data modify entity @s Owner set from storage skill: Skill.Owner
scoreboard players operation @s Level = _ Level
execute facing entity 0-0-0-0-1 feet positioned 0.0 0.0 0.0 positioned ^ ^ ^-1.2 run function calc:throw_projectile/
