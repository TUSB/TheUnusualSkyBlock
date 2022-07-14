
### ブラストスパーク軌跡

function makeup:skill/act/hunter/blast_spark/direction

execute if entity @e[distance=..3.5,tag=Enemy] run function skill:damage/load
execute as @e[distance=..3.5,tag=Enemy] run function skill:damage/apply/
execute as @e[distance=..3.5,tag=Enemy] at @a[scores={Age=1..},limit=1,sort=nearest] positioned ~ ~-10 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1.50 run function calc:throw_projectile/
