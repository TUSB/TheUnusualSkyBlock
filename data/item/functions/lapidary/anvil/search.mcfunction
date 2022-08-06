#視線先のエンチャント台を探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless block ^ ^ ^ #item:anvil positioned ^ ^ ^0.1 run function item:lapidary/anvil/search
execute if block ^ ^ ^ #item:anvil align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=Anvil,distance=..0.5] run function item:lapidary/anvil/summon
