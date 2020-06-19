scoreboard players add $Shift Global 1

execute if score $Bet Global matches 20..100 run scoreboard players remove $Bet Global 10

execute if score $Bet Global matches 101..199 run scoreboard players set $Bet Global 100
execute if score $Bet Global matches 200..1000 run scoreboard players remove $Bet Global 100

execute if score $Bet Global matches 1001..1999 run scoreboard players set $Bet Global 1000
execute if score $Bet Global matches 2000..10000 run scoreboard players remove $Bet Global 1000

execute if score $Bet Global matches 11001..19999 run scoreboard players set $Bet Global 10000
execute if score $Bet Global matches 20000..100000 run scoreboard players remove $Bet Global 10000

execute if score $Bet Global matches 100001..199999 run scoreboard players set $Bet Global 100000
execute if score $Bet Global matches 200000..1000000 run scoreboard players remove $Bet Global 100000

execute if score $Bet Global matches 1000001..1999999 run scoreboard players set $Bet Global 1000000
execute if score $Bet Global matches 2000000..10000000 run scoreboard players remove $Bet Global 1000000

execute if score $Bet Global matches 10000001..19999999 run scoreboard players set $Bet Global 10000000
execute if score $Bet Global matches 20000000..100000000 run scoreboard players remove $Bet Global 10000000

execute if score $Bet Global matches 100000001..199999999 run scoreboard players set $Bet Global 100000000

execute if score $Shift Global matches ..-1 run function casino_manager:bet/down