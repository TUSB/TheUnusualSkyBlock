#Function
# ループ処理
    data modify storage mob_data: Call.CanPlace append from storage mob_data: Call.CanPlace[0]
    data remove storage mob_data: Call.CanPlace[0]
    scoreboard players remove _ Random 1
    execute if score _ Random matches 1.. run function settings:enemy/skylands/boss/summon/silver_colony/erosion2_loop
