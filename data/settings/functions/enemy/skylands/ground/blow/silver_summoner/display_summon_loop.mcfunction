#Function
# ループ処理
    execute positioned ~ ~1 ~ if block ~ ~ ~ #block:no_collision run tp @s ~ ~1 ~ ~ ~
    execute positioned ~ ~1 ~ if block ~ ~ ~ #block:no_collision run function skill:enemy/spawn/apply
    scoreboard players add # _ 1
    execute positioned ~ ~1 ~ unless block ~ ~ ~ #block:no_collision if score # _ matches ..4 run function settings:enemy/skylands/ground/blow/silver_summoner/display_summon_loop
