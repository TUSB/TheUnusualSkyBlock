function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

###Skillsのcall(1秒間隔
data modify storage mob_data: Call set from storage mob_data: AI.Call
function entity:enemy/call/call

###PassengerのCall
##上にいるかを確認
execute if data entity @s Passengers if data storage mob_data: AI.Passenger{Type:"up"} run tag @s add Passenger_True
execute unless data entity @s Passengers if data storage mob_data: AI.Passenger{Type:"up"} run tag @s add Passenger_False
##下にいるかを確認
execute if predicate entity:vehicle if data storage mob_data: AI.Passenger{Type:"down"} run tag @s add Passenger_True
execute unless predicate entity:vehicle if data storage mob_data: AI.Passenger{Type:"down"} run tag @s add Passenger_False

##Check
execute as @s[tag=Passenger_True] if data storage mob_data: AI.Passenger{Check:1b} run tag @s add Passenger_Call
execute as @s[tag=Passenger_True] run tag @s remove Passenger_True
execute as @s[tag=Passenger_False] if data storage mob_data: AI.Passenger{Check:0b} run tag @s add Passenger_Call
execute as @s[tag=Passenger_False] run tag @s remove Passenger_False

#Call
execute as @s[tag=Passenger_Call] run data modify storage mob_data: Call set from storage mob_data: AI.Passenger.Call
execute as @s[tag=Passenger_Call] run function entity:enemy/call/call
execute as @s[tag=Passenger_Call] run tag @s remove Passenger_Call