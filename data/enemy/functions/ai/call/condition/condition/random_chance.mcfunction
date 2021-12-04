#RandomChanceの確率で成功
execute store result score @s _ run function calc:random
scoreboard players set _ _ 100
scoreboard players operation @s _ %= _ _
execute store result score _ _ run data get storage mob_data: Condition.Chance 100
execute if score _ _ > @s _ run scoreboard players set _ Calc 1
