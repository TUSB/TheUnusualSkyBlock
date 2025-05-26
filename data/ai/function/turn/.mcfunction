#> ai:turn/

##Passenger処理
execute if data storage mob_data: AI.Passenger run function ai:call/trigger/passenger/

##skill処理
execute if data storage mob_data: AI.Turn[0].Skill run function ai:turn/skill/

##Turn exit確認
execute if data storage mob_data: AI.Turn[0].Exit run function ai:turn/exit/
