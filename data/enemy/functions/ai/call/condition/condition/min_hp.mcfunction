#モブが最低HP以上あれば成功
execute store result score _ HP run data get storage mob_data: Condition.HP
#割合消費のとき
scoreboard players set _ _ 100
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ HP *= @s HPMax
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ HP /= _ _

execute store success score _ Calc if score @s HP >= _ HP
