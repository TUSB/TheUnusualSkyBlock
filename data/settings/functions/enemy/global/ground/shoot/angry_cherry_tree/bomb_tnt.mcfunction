#Function
function skill:enemy/damage/
effect give @e[predicate=entity:player,distance=..2.5] invisibility 10 9
execute as @e[predicate=entity:player,distance=..2.5] unless score @s TntCount matches 0.. run function makeup:effects/tnt/apply
execute as @e[predicate=entity:player,distance=..2.5] unless score @s TntCount matches 0.. run scoreboard players set @s TntCount 49
playsound entity.lightning_bolt.impact master @a[distance=..32] ~ ~ ~ 0.8 0.7 0.1
