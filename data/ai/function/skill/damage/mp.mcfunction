#MP減少量を取得
execute store result score _ MP run data get storage mob_data: Call.MP.MP
#割合消費のとき
scoreboard players set _ _ 100
execute if data storage mob_data: Call.MP{Percent:1b} run scoreboard players operation _ MP *= @s MPMax
execute if data storage mob_data: Call.MP{Percent:1b} run scoreboard players operation _ MP /= _ _
#MPを減らす Absorb:1bで吸収
scoreboard players operation @s MP -= _ MP
execute if data storage mob_data: Call.MP{Absorb:1b} run scoreboard players operation _ MPMax += _ MP
execute if data storage mob_data: Call.MP{Absorb:1b} run scoreboard players operation _ MPMax += @s[scores={MP=..-1}] MP
scoreboard players set @s[scores={MP=..-1}] MP 0
