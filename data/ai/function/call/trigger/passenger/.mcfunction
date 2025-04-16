#> ai:call/trigger/passenger/
##上にいるかを確認
execute if data storage mob_data: AI.Passenger{Type:"up",Check:1b} if data entity @s Passengers run function ai:call/trigger/passenger/trigger
execute if data storage mob_data: AI.Passenger{Type:"up",Check:0b} unless data entity @s Passengers run function ai:call/trigger/passenger/trigger
##下にいるかを確認
execute if data storage mob_data: AI.Passenger{Type:"down",Check:1b} if predicate entity:vehicle if predicate enemy:not_trigger_call_passenger run function ai:call/trigger/passenger/trigger
execute if data storage mob_data: AI.Passenger{Type:"down",Check:0b} unless predicate entity:vehicle run function ai:call/trigger/passenger/trigger
