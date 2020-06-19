scoreboard players remove $Shift Global 1

execute if score $Bet Global matches 90000001..99999999 run scoreboard players set $Bet Global 100000000
execute if score $Bet Global matches 10000000..90000000 run scoreboard players add $Bet Global 10000000

execute if score $Bet Global matches 9000001..9999999 run scoreboard players set $Bet Global 10000000
execute if score $Bet Global matches 1000000..9000000 run scoreboard players add $Bet Global 1000000

execute if score $Bet Global matches 900001..999999 run scoreboard players set $Bet Global 1000000
execute if score $Bet Global matches 100000..900000 run scoreboard players add $Bet Global 100000

execute if score $Bet Global matches 90001..99999 run scoreboard players set $Bet Global 100000
execute if score $Bet Global matches 10000..90000 run scoreboard players add $Bet Global 10000

execute if score $Bet Global matches 9001..9999 run scoreboard players set $Bet Global 10000
execute if score $Bet Global matches 1000..9000 run scoreboard players add $Bet Global 1000

execute if score $Bet Global matches 901..999 run scoreboard players set $Bet Global 1000
execute if score $Bet Global matches 100..900 run scoreboard players add $Bet Global 100

execute if score $Bet Global matches 91..99 run scoreboard players set $Bet Global 100
execute if score $Bet Global matches 10..90 run scoreboard players add $Bet Global 10

execute if score $Shift Global matches 1.. run function casino_manager:bet/up
