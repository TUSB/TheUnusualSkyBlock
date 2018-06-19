##############################
### クリスタル召喚
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $8 Const

execute if score $Random Global matches 0 run function skill_manager:summoner/call_crystal/summon/fire
execute if score $Random Global matches 1 run function skill_manager:summoner/call_crystal/summon/earth
execute if score $Random Global matches 2 run function skill_manager:summoner/call_crystal/summon/water
execute if score $Random Global matches 3 run function skill_manager:summoner/call_crystal/summon/wind
execute if score $Random Global matches 4 run function skill_manager:summoner/call_crystal/summon/ice
execute if score $Random Global matches 5 run function skill_manager:summoner/call_crystal/summon/thunder
execute if score $Random Global matches 6 run function skill_manager:summoner/call_crystal/summon/light
execute if score $Random Global matches 7 run function skill_manager:summoner/call_crystal/summon/dark

tag @e[tag=Initializing,limit=1] remove Initializing

###スキルインターバル設定
scoreboard players set @s SkillInterval 60
