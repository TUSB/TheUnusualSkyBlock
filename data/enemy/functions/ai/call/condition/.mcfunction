
#条件フラグ
execute if data storage mob_data: Condition{Name:"HasTarget"} run function enemy:ai/call/condition/target
execute if data storage mob_data: Condition{Name:"RandomChance"} run function enemy:ai/call/condition/random_chance
