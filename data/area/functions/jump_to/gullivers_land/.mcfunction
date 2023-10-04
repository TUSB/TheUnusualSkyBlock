execute unless predicate entity:player in area:gullivers_land run tp @s -40 70 755 -90 0
execute if predicate entity:player run function area:jump_to/v13alpha2_error

advancement revoke @s only area:jump_to/skylands/gullivers_land