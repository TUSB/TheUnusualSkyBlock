execute unless predicate entity:player in area:underworld run tp @s 1372 194 -266 -45 0
execute if predicate entity:player run function area:jump_to/v13alpha2_error

advancement revoke @s only area:jump_to/skylands/underworld