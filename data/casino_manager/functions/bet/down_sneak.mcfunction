scoreboard players add $Shift Global 1

execute if score $Bet Global matches 11..100 run scoreboard players remove $Bet Global 1

execute if score $Bet Global matches 101..1000 run scoreboard players remove $Bet Global 10

execute if score $Bet Global matches 1001..10000 run scoreboard players remove $Bet Global 100

execute if score $Bet Global matches 10001..100000 run scoreboard players remove $Bet Global 1000

execute if score $Bet Global matches 100001..1000000 run scoreboard players remove $Bet Global 10000

execute if score $Bet Global matches 1000001..10000000 run scoreboard players remove $Bet Global 100000

execute if score $Bet Global matches 10000001..100000000 run scoreboard players remove $Bet Global 1000000

execute if score $Shift Global matches ..-1 run function casino_manager:bet/down_sneak
