##############################
### クリスタル毎ティック処理
##############################

function skill_manager:summoner/call_crystal/tick/common

###Color:0b
execute if entity @s[tag=Light] run function skill_manager:summoner/call_crystal/tick/light
###Color:1b
execute if entity @s[tag=Earth] run function skill_manager:summoner/call_crystal/tick/earth
###Color:3b
execute if entity @s[tag=Ice] run function skill_manager:summoner/call_crystal/tick/ice
###Color:4b
execute if entity @s[tag=Thunder] run function skill_manager:summoner/call_crystal/tick/thunder
###Color:5b
execute if entity @s[tag=Wind] run function skill_manager:summoner/call_crystal/tick/wind
###Color 11b
execute if entity @s[tag=Water] run function skill_manager:summoner/call_crystal/tick/water
###Color:14b
execute if entity @s[tag=Fire] run function skill_manager:summoner/call_crystal/tick/fire
###Color:15b
execute if entity @s[tag=Dark] run function skill_manager:summoner/call_crystal/tick/dark
