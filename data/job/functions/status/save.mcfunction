
###ステータスをセーブする

# 現在のJobのステータスを呼び出す
function job:status/call

# セーブする

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Level int 1 run scoreboard players get @s Level
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].Exp int 1 run scoreboard players get @s Exp
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.SubLevel int 1 run scoreboard players get @s SubLevel
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.CritProbability int 1 run scoreboard players get @s CritProbability
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.ResistMin int 1 run scoreboard players get @s ResistMin
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AuraRate int 1 run scoreboard players get @s AuraRate
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.IntervalRate int 1 run scoreboard players get @s IntervalRate
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.MPCostRate int 1 run scoreboard players get @s MPCostRate
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel set value [0,0,0,0,0,0,0,0,0]
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[1] int 1 run scoreboard players get @s AddKnight
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[2] int 1 run scoreboard players get @s AddNinja
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[3] int 1 run scoreboard players get @s AddHunter
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[4] int 1 run scoreboard players get @s AddWhite_mage
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[5] int 1 run scoreboard players get @s AddBlack_mage
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[6] int 1 run scoreboard players get @s AddSummoner
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[7] int 1 run scoreboard players get @s AddPuppet_master
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus[-9].CP.AddLevel[8] int 1 run scoreboard players get @s AddThief
