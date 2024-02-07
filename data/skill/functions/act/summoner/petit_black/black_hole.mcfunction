#> skill:act/summoner/petit_black/black_hole

# 経過時間加算
    scoreboard players add @s Interval 1
# ぷちブラックCMD調整
    execute if score @s Interval matches 1 on passengers run data merge entity @s {start_interpolation:-1,interpolation_duration:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]}}
    execute if score @s Interval matches 100 on passengers run data merge entity @s {start_interpolation:-1,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
    execute if score @s Interval matches 110.. on passengers run kill @s
# 演出
    execute on passengers run function calc:set/random_rotation
    function makeup:skill/act/summoner/petit_black/black/
# 4Tickに1回流すように
    scoreboard players operation _ _ = $Tick Count
    scoreboard players set _ Calc 4
    scoreboard players operation _ _ %= _ Calc
    execute if score _ _ matches 0 run function makeup:skill/act/summoner/petit_black/black_hole_sound
# Intervalが2の倍数の時、ダメージ処理
    scoreboard players operation _ _ = @s Interval
    scoreboard players set _ Calc 2
    scoreboard players operation _ _ %= _ Calc
    execute if score _ _ matches 0 run function skill:act/summoner/petit_black/mob_damage1
# 毎Tick 半径15m以内にいるモブを吸い込む
    execute at @s as @e[tag=Enemy,tag=!Unmoved,distance=..15] run function skill:act/summoner/petit_black/mob_apply