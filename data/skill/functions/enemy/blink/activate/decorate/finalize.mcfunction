scoreboard players reset @s BlinkSubTimer

##Bit Drop
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:31,Operation:2}
execute store result score @s TemporaryEffects run function calc:bit/