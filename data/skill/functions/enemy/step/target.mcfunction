#@sをTargetに向ける
data modify storage mob_data: Target set from storage mob_data: Call.Target
function enemy:ai/target/
execute facing entity @e[tag=Target] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=Target] remove Target
