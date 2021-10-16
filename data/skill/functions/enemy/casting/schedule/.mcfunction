execute as @e[tag=Enemy-Casting] at @s run function skill:enemy/casting/schedule/act

execute if entity @e[tag=Enemy-Casting,limit=1] run schedule function skill:enemy/casting/schedule/ 1t replace