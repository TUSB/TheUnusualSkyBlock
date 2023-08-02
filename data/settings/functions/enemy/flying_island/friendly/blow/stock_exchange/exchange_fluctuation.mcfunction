#Function
data modify storage mob_data: StockVillager.Recipe set from storage mob_data: StockVillager.Recipes[-1]

execute if data storage mob_data: StockVillager.Recipe.buy{id:"minecraft:emerald"} run function settings:enemy/debug_room/friendly/blow/stock_exchange/exchange_buy
execute if data storage mob_data: StockVillager.Recipe.sell{id:"minecraft:emerald"} run function settings:enemy/debug_room/friendly/blow/stock_exchange/exchange_sell

data remove storage mob_data: StockVillager.Recipes[-1]
execute if data storage mob_data: StockVillager.Recipes[0] run function settings:enemy/debug_room/friendly/blow/stock_exchange/exchange_fluctuation
