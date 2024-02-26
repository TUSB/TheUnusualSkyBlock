#視線先のエンチャント台を探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless block ~ ~0.1 ~ enchanting_table unless block ~-0.1 ~ ~ enchanting_table unless block ~0.1 ~ ~ enchanting_table unless block ~ ~ ~-0.1 enchanting_table unless block ~ ~ ~-0.1 enchanting_table positioned ^ ^ ^0.1 run function item:enchant/enchanting_table/search
execute if score # _ matches 1 run function item:enchant/enchanting_table/found
