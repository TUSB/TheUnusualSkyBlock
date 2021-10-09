execute store result storage mob_data: Loop int 0.99999 run data get storage mob_data: Loop
execute if data storage mob_data: {Loop:0} run function calc:geometry/tp_00000
execute unless data storage mob_data: {Loop:0} positioned ^ ^ ^0.01 run function enemy:ai/move/loop
