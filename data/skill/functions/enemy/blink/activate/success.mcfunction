execute store result storage mob_data: AI.Damage[{Name:"BlinkActivate"}].Count int 0.99999 run data get storage mob_data: AI.Damage[{Name:"BlinkActivate"}].Count
scoreboard players reset @s Damage

execute if data storage mob_data: Call{Count:1} run data remove storage mob_data: AI.Damage[{Name:"BlinkActivate"}]
function skill:enemy/blink/activate/decorate/