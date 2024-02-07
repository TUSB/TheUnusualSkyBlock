#指定したTurnに変更
execute store result score _ Calc run data get storage mob_data: Call.Set
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Index
scoreboard players operation _ Calc -= _ _
execute if score _ Calc matches ..-1 store result score _ _ run data get storage mob_data: AI.TurnCount
execute if score _ Calc matches ..-1 run scoreboard players operation _ Calc += _ _
execute unless score _ Calc matches 0 store result storage mob_data: AI.ChangeTurn int 1 run scoreboard players get _ Calc
