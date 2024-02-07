#モブが最低Level以上あれば成功
execute store result score _ Level run data get storage mob_data: Condition.Level
execute store success score _ Calc if score @s Level >= _ Level
