#Function
tellraw @a[nbt={Inventory:[{tag:{Stock:{}}}]}] [" --- ",{"translate":"証券取引情報"}," --- "]

# 取引データ取得
data modify storage calc: Array.reverse.Input set from entity @s Offers.Recipes
function calc:array/reverse/
data modify storage mob_data: StockVillager.Recipes set from storage calc: Array.reverse.Output
execute if data storage mob_data: StockVillager.Recipes[-2] run data remove storage mob_data: StockVillager.Recipes[-1]
data modify storage calc: Array.reverse.Input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StockInfo
function calc:array/reverse/
data modify storage mob_data: StockVillager.StockInfo set from storage calc: Array.reverse.Output

# 現在売り出し中の株ID取得
execute store result score _ _ run data get storage mob_data: StockVillager.Recipes[-1].sell.tag.Stock.ID

# 現在の株が売れていたら取引開始
execute store result score _ Calc run data get storage mob_data: StockVillager.Recipes[-1].uses
execute unless score _ Calc matches 0 run function settings:enemy/flying_island/friendly/blow/stock_exchange/add_stock

# 次の売り出しの株ID設定
scoreboard players add _ _ 1
execute store result storage mob_data: StockVillager.Recipes[-1].sell.tag.Stock.ID int 1 run scoreboard players get _ _
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"translate":"取引番号："},{"score":{"name":"_","objective":"_"}}]'
execute in area:control_area run data modify storage mob_data: StockVillager.Recipes[-1].sell.tag.display.Lore[-1] set from block 2 3 2 Text1

# エメラルド取引値変動
data modify storage mob_data: StockVillager.Exchanged set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StockInfo set value []
function settings:enemy/flying_island/friendly/blow/stock_exchange/exchange_fluctuation

# 情報開示(必要ならば)
scoreboard players set _ _ 0
execute if data storage mob_data: StockVillager.Exchanged[-2] store success score _ _ run data modify storage mob_data: StockVillager.Exchanged prepend value {sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"translate":"証券取引情報"}'}}}}
execute if score _ _ matches 1 run data modify storage mob_data: StockVillager.Exchanged[0].sell.tag.display.Lore append from storage mob_data: StockVillager.InfoLore[]

# 更新お知らせ
execute if data storage mob_data: StockVillager.Exchanged[-2] run playsound minecraft:item.goat_horn.sound.1 voice @a[distance=..7] ~ ~ ~
execute if data storage mob_data: StockVillager.Exchanged[-2] as @a if data entity @s Inventory[{tag:{Stock:{}}}] at @s run playsound minecraft:item.goat_horn.sound.1 voice @s ~ ~ ~ 0.2

# 取引データ返却
data modify entity @s Offers.Recipes set from storage mob_data: StockVillager.Exchanged
execute unless data storage mob_data: StockVillager.Exchanged[-2] run forceload remove ~ ~
data remove storage mob_data: StockVillager

# 一応サウンドストップ
stopsound @a[distance=..10] * minecraft:block.portal.trigger

tellraw @a[nbt={Inventory:[{tag:{Stock:{}}}]}] " ---------------- "
