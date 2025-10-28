#> entity:has_in_ground/transfer_check
#
# Flying かつ speed:0 -> lifeへ移行
# not Flying かつ not speed:0 -> cooldownへ移行
#

execute if entity @s[tag=Flying] if predicate entity:has_in_ground/not_flying run return run function entity:has_in_ground/set/cooldown_to_life
execute if entity @s[tag=!Flying] if predicate entity:has_in_ground/flying run function entity:has_in_ground/set/life_to_cooldown
