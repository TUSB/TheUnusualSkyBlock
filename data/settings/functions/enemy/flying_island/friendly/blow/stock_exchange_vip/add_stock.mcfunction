#Function
data modify storage mob_data: StockVillager.StockInfo append value {History:[0b,0b,0b],BuyCount:0b,ID:0}
data modify storage mob_data: StockVillager.StockInfo[-1].History[] set from storage mob_data: StockVillager.Recipes[-1].buy.Count
execute store result storage mob_data: StockVillager.StockInfo[-1].BuyCount int 1 run data get storage mob_data: StockVillager.Recipes[-1].buy.Count
data modify storage mob_data: StockVillager.StockInfo[-1].ID set from storage mob_data: StockVillager.Recipes[-1].sell.tag.Stock.ID

data modify storage mob_data: StockVillager.Recipes[-1].buyB set from storage mob_data: StockVillager.Recipes[-1].sell
data modify storage mob_data: StockVillager.Recipes[-1].sell set from storage mob_data: StockVillager.Recipes[-1].buy
data modify storage mob_data: StockVillager.Recipes[-1].buy set from storage mob_data: StockVillager.Recipes[-1].buyB
data remove storage mob_data: StockVillager.Recipes[-1].buyB
data modify storage mob_data: StockVillager.Recipes[-1].uses set value 0
data modify storage mob_data: StockVillager.Recipes[-1].xp set value 6
execute store result storage mob_data: StockVillager.Recipes[-1].maxUses int 1 run scoreboard players get _ Calc


function settings:enemy/flying_island/friendly/blow/stock_exchange_vip/main
data modify storage mob_data: StockVillager.Recipes append from storage tusb_mob: "即時ステータス"."ベース".Offers.Recipes[0]
data modify storage mob_data: StockVillager.Recipes[-1].buy.Count set from storage mob_data: StockVillager.Recipes[-2].sell.Count

forceload add ~ ~
