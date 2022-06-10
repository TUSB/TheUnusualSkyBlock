execute if data storage mob_data: Call.RaiseCount run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.Count set from storage mob_data: Call.RaiseCount
execute if data storage mob_data: Call.HealthRecovery run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.HealthRecovery set from storage mob_data: Call.HealthRecovery
execute unless data storage mob_data: Call.RaiseCount run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.Count set value 1
tag @s add HasRaise