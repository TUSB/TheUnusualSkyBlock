#Function
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute if score _ _ matches 5 run particle electric_spark ~0 ~3 ~-0.25 0 0 0 0 1
execute if score _ _ matches 5 run particle electric_spark ~0.14695 ~2.7 ~-0.20225 0 0 0 0 1
execute if score _ _ matches 4 run particle electric_spark ~0.23776 ~2.4 ~-0.07725 0 0 0 0 1
execute if score _ _ matches 4 run particle electric_spark ~0.23776 ~2.1 ~0.07725 0 0 0 0 1
execute if score _ _ matches 3 run particle electric_spark ~0.14695 ~1.8 ~0.20225 0 0 0 0 1
execute if score _ _ matches 3 run particle electric_spark ~0 ~1.5 ~0.25 0 0 0 0 1
execute if score _ _ matches 2 run particle electric_spark ~-0.14695 ~1.2 ~0.20225 0 0 0 0 1
execute if score _ _ matches 2 run particle electric_spark ~-0.23776 ~0.9 ~0.07725 0 0 0 0 1
execute if score _ _ matches 1 run particle electric_spark ~-0.23776 ~0.6 ~-0.07725 0 0 0 0 1
execute if score _ _ matches 1 run particle electric_spark ~-0.14695 ~0.3 ~-0.20225 0 0 0 0 1
execute if score _ _ matches 5 run particle electric_spark ~0 ~3 ~0.25 0 0 0 0 1
execute if score _ _ matches 5 run particle electric_spark ~-0.14695 ~2.7 ~0.20225 0 0 0 0 1
execute if score _ _ matches 4 run particle electric_spark ~-0.23776 ~2.4 ~0.07725 0 0 0 0 1
execute if score _ _ matches 4 run particle electric_spark ~-0.23776 ~2.1 ~-0.07725 0 0 0 0 1
execute if score _ _ matches 3 run particle electric_spark ~-0.14695 ~1.8 ~-0.20225 0 0 0 0 1
execute if score _ _ matches 3 run particle electric_spark ~0 ~1.5 ~-0.25 0 0 0 0 1
execute if score _ _ matches 2 run particle electric_spark ~0.14695 ~1.2 ~-0.20225 0 0 0 0 1
execute if score _ _ matches 2 run particle electric_spark ~0.23776 ~0.9 ~-0.07725 0 0 0 0 1
execute if score _ _ matches 1 run particle electric_spark ~0.23776 ~0.6 ~0.07725 0 0 0 0 1
execute if score _ _ matches 1 run particle electric_spark ~0.14695 ~0.3 ~0.20225 0 0 0 0 1
scoreboard players set _ Calc 2
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 run function settings:enemy/skylands/boss/shoot/zedra_marker/shape3
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute if score _ _ matches -1 run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
