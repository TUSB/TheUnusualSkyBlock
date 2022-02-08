#HPがあれば消費して成功
execute store result score _ HP run data get storage mob_data: Condition.HP
#割合消費のとき
scoreboard players set _ _ 100
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ HP *= @s HPMax
execute if data storage mob_data: Condition{Percent:1b} run scoreboard players operation _ HP /= _ _

execute if score @s HP >= _ HP store success score _ Calc run scoreboard players operation @s HP -= _ HP
scoreboard players operation @s HP < @s HPMax
