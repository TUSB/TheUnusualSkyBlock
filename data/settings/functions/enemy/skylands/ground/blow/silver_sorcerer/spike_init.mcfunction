#Function
# 攻撃力設定
    scoreboard players operation _ Calc = @s Level
    scoreboard players set _ _ 3
    scoreboard players operation _ Calc *= _ _
    scoreboard players set _ _ 4
    scoreboard players operation _ Calc /= _ _
    execute store result score @s SpecialAttack run scoreboard players add _ Calc 2
#ループ処理の準備
scoreboard players set # _ 0
scoreboard players set # Calc 0
#ループ処理の開始
execute if block ~ ~ ~ #block:no_collision run function settings:enemy/skylands/ground/blow/silver_sorcerer/spike_init_loop
#完全に失敗していたら、ゴミ箱行き
execute if score # Calc matches 0 run data modify storage mob_data: Tags append value Garbage
execute on passengers run tp @s ~ ~ ~ ~ 0
execute on passengers on passengers run tp @s ~ ~ ~ ~ 0
function settings:enemy/skylands/ground/shoot/thunder_spirit/thunder_sound
