execute store result storage mob_data: Blink.Count int 0.99999 run data get storage mob_data: Blink.Count
scoreboard players reset @s Damage

execute if data storage mob_data: Blink{Count:0} run data remove storage mob_data: Blink
function skill:enemy/blink/activate/decorate/