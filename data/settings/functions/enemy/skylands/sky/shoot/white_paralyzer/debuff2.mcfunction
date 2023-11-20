#Function
# 高確率でデバフ
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..20 run effect give @s invisibility 5 6
# 確定で視界撹乱デバフ
    data modify storage mob_data: Call.Tags set value ["Enemy","Common","Paralyze"]
# #oh_my_datを起動
    function #oh_my_dat:please
# DelayActionを起動
    function skill:enemy/delay_action/append/
