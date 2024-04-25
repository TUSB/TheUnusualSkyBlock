#Function
# 売値は-1-+1
execute store result score _ Random run function calc:random
scoreboard players set _ _ 3
scoreboard players operation _ Random %= _ _
scoreboard players remove _ Random 1

execute store result score _ _ run data get storage mob_data: StockVillager.Recipe.buy.Count
scoreboard players operation _ _ += _ Random
execute if score _ _ matches ..6 run scoreboard players set _ _ 7
execute if score _ _ matches 12.. run scoreboard players set _ _ 11
#tellraw @a ["次の売値: ",{"score":{"name":"_","objective":"_"}}]
execute store result storage mob_data: StockVillager.Recipe.buy.Count byte 1 run scoreboard players get _ _
#execute store result storage mob_data: StockVillager.Recipe.maxUses int 1 run scoreboard players get _ _
data modify storage mob_data: StockVillager.Exchanged append from storage mob_data: StockVillager.Recipe
