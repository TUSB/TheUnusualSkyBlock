#> item:generate_container_loot/search
#前方を探索
execute store result storage calc: SearchForward.Loop int 0.99999 run data get storage calc: SearchForward.Loop
execute if block ^ ^ ^ #item:containers if data block ^ ^ ^ Lock store success storage calc: SearchForward.Loop int 0 run function item:generate_container_loot/check_block/
execute unless data storage calc: SearchForward{Loop:0} positioned ^ ^ ^0.5 run function item:generate_container_loot/search
