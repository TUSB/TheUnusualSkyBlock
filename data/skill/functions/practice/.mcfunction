#インターバル確認
#TODO: 秒で表示
execute if score @s Interval matches 1.. run function makeup:skill/practice/error/while_interval
execute unless score @s Interval matches 1.. run function skill:practice/check_type
