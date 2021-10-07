#@sをTargetに向ける
data modify storage mob_data: Target set from storage mob_data: Call.Target
execute as 0-0-0-0-1 run function enemy:ai/target/
execute facing entity 0-0-0-0-1 feet run tp @s ~ ~ ~ ~ ~
execute as 0-0-0-0-1 run function calc:geometry/return_marker
