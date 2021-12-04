#同じNBTがある=マージ失敗すれば成功
data modify storage mob_data: NBT set from entity @s {}
execute store success score _ _ run data modify storage mob_data: NBT merge from storage mob_data: Condition.NBT
execute if score _ _ matches 0 run scoreboard players set _ Calc 1
data remove storage mob_data: NBT
