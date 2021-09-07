#実行
function skill:practice/act/
#MP消費
scoreboard players operation @s MP -= _ MP
function player:mp_bar/set

#インターバル適用
scoreboard players operation @s Interval = _ Interval
