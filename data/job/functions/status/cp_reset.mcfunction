
###CP類をリセット

# デフォルト設定を読み込み
function settings:job/status/cp_default

# CP 2P 消費系
execute store result score @s SubLevel run data get storage tusb_player: Potentials.Default.SubLevel 1
execute store result score @s CritProbability run data get storage tusb_player: Potentials.Default.CritProbability 1

# CP 1P 消費系
execute store result score @s ResistMin run data get storage tusb_player: Potentials.Default.ResistMin 1
execute store result score @s AuraRate run data get storage tusb_player: Potentials.Default.AuraRate 1
execute store result score @s IntervalRate run data get storage tusb_player: Potentials.Default.IntervalRate 1
execute store result score @s MPCostRate run data get storage tusb_player: Potentials.Default.MPCostRate 1

