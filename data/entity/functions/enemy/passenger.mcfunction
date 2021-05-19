###上にいるかを確認
execute if data entity @s Passengers if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger{Type:"up"} run tag @s add Passenger_True
execute unless data entity @s Passengers if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger{Type:"up"} run tag @s add Passenger_False
###下にいるかを確認
execute if predicate entity:vehicle if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger{Type:"down"} run tag @s add Passenger_True
execute unless predicate entity:vehicle if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger{Type:"down"} run tag @s add Passenger_False

###Check
execute as @s[tag=Passenger_True] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger{Check:1b} run tag @s add Passenger_Call
execute as @s[tag=Passenger_True] run tag @s remove Passenger_True
execute as @s[tag=Passenger_False] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger{Check:0b} run tag @s add Passenger_Call
execute as @s[tag=Passenger_False] run tag @s remove Passenger_False

#Call
execute as @s[tag=Passenger_Call] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Call set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger.Call
execute as @s[tag=Passenger_Call] run function entity:enemy/call
execute as @s[tag=Passenger_Call] run tag @s remove Passenger_Call