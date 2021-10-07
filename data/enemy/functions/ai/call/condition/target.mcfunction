#Targetの有無を確認
data modify storage mob_data: Target set from storage mob_data: Call.Condition.Target
execute as 0-0-0-0-1 run function enemy:ai/target/
execute if score 00000000-0000-0000-0000-000000000001 _ matches 1 run scoreboard players set _ Calc 1
