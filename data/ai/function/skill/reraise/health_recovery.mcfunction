
# 倍率確認
scoreboard players set _ _ 100
scoreboard players set _ Calc 100
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.HealthRecovery store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaiseData.HealthRecovery


scoreboard players operation @s HP = @s HPMax
scoreboard players operation @s HP *= _ _
scoreboard players operation @s HP /= _ Calc
