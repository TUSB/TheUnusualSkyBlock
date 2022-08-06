##上にいるかを確認
execute if data entity @s Passengers if data storage mob_data: AI.Passenger{Type:"up",Check:1b} run function enemy:ai/call/trigger/passenger/trigger
execute unless data entity @s Passengers if data storage mob_data: AI.Passenger{Type:"up",Check:0b} run function enemy:ai/call/trigger/passenger/trigger
##下にいるかを確認
execute if predicate entity:vehicle if data storage mob_data: AI.Passenger{Type:"down",Check:1b} run function enemy:ai/call/trigger/passenger/trigger
execute unless predicate entity:vehicle if data storage mob_data: AI.Passenger{Type:"down",Check:0b} run function enemy:ai/call/trigger/passenger/trigger
