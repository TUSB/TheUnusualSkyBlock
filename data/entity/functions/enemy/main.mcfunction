#storage入手
function oh_its_dat:please
#分岐
execute if entity @s[tag=Skill] run function entity:enemy/skill
execute if entity @s[tag=Passenger] run function entity:enemy/passenger
execute if entity @s[tag=Time] run function entity:enemy/time
execute if entity @s[tag=Death] run function entity:enemy/death
