#条件フラグ
execute if data storage mob_data: Condition{Name:"HasTarget"} run function enemy:ai/call/condition/target/
execute if data storage mob_data: Condition{Name:"RandomChance"} run function enemy:ai/call/condition/random_chance
execute if data storage mob_data: Condition{Name:"MP"} run function enemy:ai/call/condition/mp
execute if data storage mob_data: Condition{Name:"HP"} run function enemy:ai/call/condition/hp
execute if data storage mob_data: Condition{Name:"MinMP"} run function enemy:ai/call/condition/min_mp
execute if data storage mob_data: Condition{Name:"MinHP"} run function enemy:ai/call/condition/min_hp
execute if data storage mob_data: Condition{Name:"CheckNBT"} run function enemy:ai/call/condition/check_nbt
execute if data storage mob_data: Condition{Name:"CheckBlock"} run function enemy:ai/call/condition/check_block
execute if data storage mob_data: Condition{Name:"Function"} run function enemy:ai/call/condition/function
