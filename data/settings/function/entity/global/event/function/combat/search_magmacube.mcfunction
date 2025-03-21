#Function
execute if entity @e[tag=CombatLittleMagmacube,predicate=!entity:vehicle,predicate=enemy:not_trigger_call_passenger,distance=..3,limit=1]
execute if entity @e[tag=CombatLittleMagmacube,predicate=!entity:vehicle,predicate=enemy:not_trigger_call_passenger,distance=..3,limit=1] run ride @e[tag=CombatLittleMagmacube,predicate=!entity:vehicle,predicate=enemy:not_trigger_call_passenger,distance=..3,limit=1] mount @s
