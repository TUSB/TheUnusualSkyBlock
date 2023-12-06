#> skill:act/summoner/petit_black/black_hole

# 経過時間加算
    scoreboard players add @s Interval 1
# 演出
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