#インターバル確認
#TODO: 秒で表示
execute if score @s Interval matches 1.. run function makeup:skill/practice/error/while_interval
#凍結時、職業スキル・TUSBメモリー無効
execute if score @s FreezeTimer matches 0.. run function makeup:effects/freeze/fail
execute unless score @s Interval matches 1.. unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
