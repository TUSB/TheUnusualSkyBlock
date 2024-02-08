
###レベルごとに増加量が異なる

execute if score @s Level matches ..30 run scoreboard players set _ Burst 15
execute if score @s Level matches 31..50 run scoreboard players set _ Burst 35
execute if score @s Level matches 51..100 run scoreboard players set _ Burst 80
execute if score @s Level matches 101..150 run scoreboard players set _ Burst 120
execute if score @s Level matches 151..300 run scoreboard players set _ Burst 150
execute if score @s Level matches 301.. run scoreboard players set _ Burst 200
