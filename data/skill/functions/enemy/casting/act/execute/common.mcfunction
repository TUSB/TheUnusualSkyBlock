###共通処理
execute store result storage mob_data: ExecutingCast.Stage int 0.999999 run data get storage mob_data: ExecutingCast.Stage
data modify storage mob_data: ExecutingCast.Executed set value 1b
execute if data storage mob_data: ExecutingCast{Stage:0} run data modify storage mob_data: ExecutingCast.Delete set value 1b