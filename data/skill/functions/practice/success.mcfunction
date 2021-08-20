#実行
function skill:practice/act/
#MP消費
scoreboard players operation @s MP -= _ MP
#インターバル適用
scoreboard players operation @s Interval = _ Interval
