execute store result score @s _ run data get storage mob_data: Blink.Chance 10000
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 10000
#Calc %= 10000
scoreboard players operation _ Calc %= _ _

execute if score @s _ > _ Calc run function skill:enemy/blink/activate/success