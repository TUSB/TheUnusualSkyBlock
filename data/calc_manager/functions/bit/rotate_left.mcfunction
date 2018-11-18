##############################
### bigflagを左に循環シフト
##############################

execute store result score $Carry Global if score $BitFlags Global matches ..-1
scoreboard players operation $BitFlags Global *= $2 Const
scoreboard players operation $BitFlags Global += $Carry Global
