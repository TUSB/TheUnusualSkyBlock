###共通処理
execute store result storage mob_data: ExecutingAction.Stage int 0.999999 run data get storage mob_data: ExecutingAction.Stage
data modify storage mob_data: ExecutingAction.Executed set value 1b
execute if data storage mob_data: ExecutingAction{Stage:0} run data modify storage mob_data: ExecutingAction.Delete set value 1b
