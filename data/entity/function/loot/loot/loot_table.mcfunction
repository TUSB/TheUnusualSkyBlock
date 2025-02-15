##############################
### エンティティ ルートドロップ
##############################

loot spawn ~ ~ ~ kill 0-0-0-0-3
scoreboard players remove _ Calc 1
execute if score _ Calc matches 1.. run function entity:loot/loot/loot_table
