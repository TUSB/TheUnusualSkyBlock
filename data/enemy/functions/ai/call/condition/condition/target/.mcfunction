#Targetの有無を確認
data modify storage mob_data: Target set from storage mob_data: Condition.Target
execute unless data storage mob_data: Condition{Position:"Entity"} run function calc:geometry/tp_00001
execute if data storage mob_data: Condition{Position:"Entity"} run tp 0-0-0-0-1 @s
#自身が対象にならないようにタグ付与
tag @s add NonTarget
execute at @s as 0-0-0-0-1 run function enemy:ai/call/settings/target/fork
tag @s remove NonTarget
scoreboard players set _ Calc 0
execute if score 00000000-0000-0000-0000-000000000001 _ matches 1 unless data storage mob_data: Condition.Half run scoreboard players set _ Calc 1
execute if score 00000000-0000-0000-0000-000000000001 _ matches 1 if data storage mob_data: Condition.Half facing entity 0-0-0-0-1 feet positioned ^ ^ ^0.003 rotated as @s run function enemy:ai/call/condition/condition/target/half
execute as 0-0-0-0-1 run function calc:geometry/return_marker
