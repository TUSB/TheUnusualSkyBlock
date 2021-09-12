function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

###Skillsのcall(1秒間隔
execute store success score _ _ run data modify storage mob_data: Call set from storage mob_data: AI.Call
execute if score _ _ matches 1 run function enemy:ai/call/call

###PassengerのCall
##上にいるかを確認
execute if data entity @s Passengers if data storage mob_data: AI.Passenger{Type:"up",Check:1b} run function enemy:ai/call/passenger
execute unless data entity @s Passengers if data storage mob_data: AI.Passenger{Type:"up",Check:0b} run function enemy:ai/call/passenger
##下にいるかを確認
execute if predicate entity:vehicle if data storage mob_data: AI.Passenger{Type:"down",Check:1b} run function enemy:ai/call/passenger
execute unless predicate entity:vehicle if data storage mob_data: AI.Passenger{Type:"down",Check:0b} run function enemy:ai/call/passenger
