#MPを減らす
execute store result score _ MP run data get storage mob_data: Call.MP.MP
#割合消費のとき
scoreboard players set _ _ 100
execute if data storage mob_data: Call.MP{Percent:1b} run scoreboard players operation _ MP *= @s MPMax
execute if data storage mob_data: Call.MP{Percent:1b} run scoreboard players operation _ MP /= _ _

scoreboard players operation @s MP -= _ MP
scoreboard players set @s[scores={MP=..-1}] MP 0
