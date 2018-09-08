##############################
### ジョブ設定
##############################

execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"剣士\"]"}}}}] run scoreboard players set @s Job 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"忍者\"]"}}}}] run scoreboard players set @s Job 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"狩人\"]"}}}}] run scoreboard players set @s Job 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"白魔導士\"]"}}}}] run scoreboard players set @s Job 4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"黒魔導士\"]"}}}}] run scoreboard players set @s Job 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"召喚士\"]"}}}}] run scoreboard players set @s Job 6
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:"[\"絡繰士\"]"}}}}] run scoreboard players set @s Job 7

clear @s minecraft:player_head{display:{Name:"[\"剣士\"]"}}
clear @s minecraft:player_head{display:{Name:"[\"忍者\"]"}}
clear @s minecraft:player_head{display:{Name:"[\"狩人\"]"}}
clear @s minecraft:player_head{display:{Name:"[\"白魔導士\"]"}}
clear @s minecraft:player_head{display:{Name:"[\"黒魔導士\"]"}}
clear @s minecraft:player_head{display:{Name:"[\"召喚士\"]"}}
clear @s minecraft:player_head{display:{Name:"[\"絡繰士\"]"}}
