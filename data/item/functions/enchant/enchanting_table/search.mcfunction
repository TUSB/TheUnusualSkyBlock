#視線先のエンチャント台を探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless block ^ ^ ^ enchanting_table positioned ^ ^ ^0.1 run function item:enchant/enchanting_table/search
execute if block ^ ^ ^ enchanting_table align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=EnchantTable,distance=..0.5] run function item:enchant/enchanting_table/summon
