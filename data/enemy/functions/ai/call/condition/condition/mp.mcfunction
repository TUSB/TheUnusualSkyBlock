#MPがあれば消費して成功
execute store result score _ MP run data get storage mob_data: Condition.MP
#割合消費のとき
scoreboard players set _ _ 100
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ MP *= @s MPMax
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ MP /= _ _

execute if score @s MP >= _ MP store success score _ Calc run scoreboard players operation @s MP -= _ MP
scoreboard players operation @s MP < @s MPMax
