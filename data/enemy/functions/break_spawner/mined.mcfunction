#スポナー採掘時 AbsorptionAmount>=2のときスポナー再設置
execute store result score _ _ run data get entity @s AbsorptionAmount 1
scoreboard players remove _ _ 1
execute store result entity @s AbsorptionAmount float 1 run scoreboard players get _ _

execute if score _ _ matches 1.. run function enemy:break_spawner/count_down
execute unless score _ _ matches 1.. run function enemy:break_spawner/break
