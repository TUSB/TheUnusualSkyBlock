#モブが最低MP以上あれば成功
execute store result score _ MP run data get storage mob_data: Condition.MP
#割合消費のとき
scoreboard players set _ _ 100
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ MP *= @s MPMax
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ MP /= _ _

execute store success score _ Calc if score @s MP >= _ MP
