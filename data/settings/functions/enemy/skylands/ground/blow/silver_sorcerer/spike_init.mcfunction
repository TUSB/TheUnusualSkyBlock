#Function
#ループ処理の準備
scoreboard players set # _ 0
scoreboard players set # Calc 0
#ループ処理の開始
execute if block ~ ~ ~ #main:no_collision run function settings:enemy/skylands/ground/blow/silver_sorcerer/spike_init_loop
#完全に失敗していたら、ゴミ箱行き
execute if score # Calc matches 0 run data modify storage mob_data: Tags append value Garbage
execute on passengers run tp @s ~ ~ ~ ~ 0
execute on passengers on passengers run tp @s ~ ~ ~ ~ 0
function settings:enemy/skylands/ground/shoot/thunder_spirit/thunder_sound
