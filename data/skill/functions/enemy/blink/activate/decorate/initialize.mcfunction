scoreboard players set @s BlinkSubTimer 7

function makeup:skill/enemy/blink/activate/0


##Bit Raise
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:31,Operation:1}
execute store result score @s TemporaryEffects run function calc:bit/