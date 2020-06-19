scoreboard players remove $Shift Global 1

execute if score $Bet Global matches 10000000..99999999 run scoreboard players add $Bet Global 1000000

execute if score $Bet Global matches 1000000..9999999 run scoreboard players add $Bet Global 100000

execute if score $Bet Global matches 100000..999999 run scoreboard players add $Bet Global 10000

execute if score $Bet Global matches 10000..99999 run scoreboard players add $Bet Global 1000

execute if score $Bet Global matches 1000..9999 run scoreboard players add $Bet Global 100

execute if score $Bet Global matches 100..999 run scoreboard players add $Bet Global 10

execute if score $Bet Global matches 10..99 run scoreboard players add $Bet Global 1

execute if score $Shift Global matches 1.. run function casino_manager:bet/up_sneak
