#条件フラグ
execute if data storage mob_data: Condition{Name:"HasTarget"} run function enemy:ai/call/condition/condition/target/
execute if data storage mob_data: Condition{Name:"RandomChance"} run function enemy:ai/call/condition/condition/random_chance
execute if data storage mob_data: Condition{Name:"MP"} run function enemy:ai/call/condition/condition/mp
execute if data storage mob_data: Condition{Name:"HP"} run function enemy:ai/call/condition/condition/hp
execute if data storage mob_data: Condition{Name:"MinMP"} run function enemy:ai/call/condition/condition/min_mp
execute if data storage mob_data: Condition{Name:"MinHP"} run function enemy:ai/call/condition/condition/min_hp
execute if data storage mob_data: Condition{Name:"MinLv"} run function enemy:ai/call/condition/condition/min_lv
execute if data storage mob_data: Condition{Name:"CheckNBT"} run function enemy:ai/call/condition/condition/check_nbt
execute if data storage mob_data: Condition{Name:"CheckBlock"} run function enemy:ai/call/condition/condition/check_block
execute if data storage mob_data: Condition{Name:"Function"} run function enemy:ai/call/condition/condition/function
execute if data storage mob_data: Condition{Name:"Pass"} store result score _ Calc run data get storage mob_data: Condition.Pass
