
### クリスタル召喚

execute store result score _ _ run function calc:random
scoreboard players set _ Calc 5
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0 run function skill:act/summoner/call_crystal_attack/summon/fire
execute if score _ _ matches 1 run function skill:act/summoner/call_crystal_attack/summon/ice
execute if score _ _ matches 2 run function skill:act/summoner/call_crystal_attack/summon/lightning
execute if score _ _ matches 3 run function skill:act/summoner/call_crystal_attack/summon/light
execute if score _ _ matches 4 run function skill:act/summoner/call_crystal_attack/summon/dark

tag @e[tag=Initializing,limit=1] remove Initializing
