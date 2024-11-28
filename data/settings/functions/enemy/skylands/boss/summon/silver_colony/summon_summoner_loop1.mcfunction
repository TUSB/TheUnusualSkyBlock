#Function
# ループ処理
    execute if block ^ ^ ^ #block:no_collision align xyz positioned ~0.5 ~0.5 ~0.5 run function settings:enemy/skylands/boss/summon/silver_colony/summon_summoner_loop2
    execute unless block ^ ^ ^ #block:no_collision positioned ^ ^ ^0.25 if entity @s[distance=..32] run function settings:enemy/skylands/boss/summon/silver_colony/summon_summoner_loop1
