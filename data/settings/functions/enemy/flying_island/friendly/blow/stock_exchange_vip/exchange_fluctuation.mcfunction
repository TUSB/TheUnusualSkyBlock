#Function
data modify storage mob_data: StockVillager.Recipe set from storage mob_data: StockVillager.Recipes[-1]

execute if data storage mob_data: StockVillager.Recipe.buy{id:"minecraft:iron_nugget"} run function settings:enemy/flying_island/friendly/blow/stock_exchange_vip/exchange_buy
execute if data storage mob_data: StockVillager.Recipe.sell{id:"minecraft:iron_nugget"} run function settings:enemy/flying_island/friendly/blow/stock_exchange_vip/exchange_sell

data remove storage mob_data: StockVillager.Recipes[-1]
execute if data storage mob_data: StockVillager.Recipes[0] run function settings:enemy/flying_island/friendly/blow/stock_exchange_vip/exchange_fluctuation
