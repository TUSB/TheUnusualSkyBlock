data modify storage mob_data: Target set from storage mob_data: Settings.Target
execute if data storage mob_data: Target{Look:"Self"} run tp 0-0-0-0-2 @s

#自身が対象にならないようにタグ付与
tag @s add NonTarget
execute unless data storage mob_data: Target{Look:"Self"} as 0-0-0-0-2 run function enemy:ai/call/settings/target/fork
tag @s remove NonTarget
