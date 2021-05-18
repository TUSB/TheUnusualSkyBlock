
###CP類をリセット

# デフォルト設定を読み込み
function settings:job/status/cp_default

# CP 2P 消費系
scoreboard players operation @s SubLevel = $Default SubLevel 
scoreboard players operation @s CritProbability = $Default CritProbability 

# CP 1P 消費系
scoreboard players operation @s ResistMin = $Default ResistMin
scoreboard players operation @s AuraRate = $Default AuraRate
scoreboard players operation @s IntervalRate = $Default IntervalRate
scoreboard players operation @s MPCostRate = $Default MPCostRate

scoreboard players set @s AddKnight 0
scoreboard players set @s AddNinja 0
scoreboard players set @s AddHunter 0
scoreboard players set @s AddWhite_mage 0
scoreboard players set @s AddBlack_mage 0
scoreboard players set @s AddSummoner 0
scoreboard players set @s AddPuppet_master 0
scoreboard players set @s AddThief 0
