#> skill:act/hunter/photonic_laser/check_interval
#
# インターバルをチェックする
#
# @within function skill:native_tick

scoreboard players remove @s Interval 1
execute if score @s Interval matches ..0 run function skill:act/hunter/photonic_laser/tick
