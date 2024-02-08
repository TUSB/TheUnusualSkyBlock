#視線先のスポナーを探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless block ^ ^ ^ spawner positioned ^ ^ ^0.1 run function enemy:reboot_spawner/search
execute if block ^ ^ ^ spawner align xyz positioned ~0.5 ~0.5 ~0.5 run function enemy:reboot_spawner/reboot
