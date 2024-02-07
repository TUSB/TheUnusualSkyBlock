#Function
# 履歴を記録
data modify storage mob_data: StockVillager.StockInfo[-1].History append from storage mob_data: StockVillager.Recipe.sell.Count

#tellraw @a ["取引番号: ",{"storage":"mob_data:","nbt":"StockVillager.StockInfo[-1].ID"},"の履歴: ",{"storage":"mob_data:","nbt":"StockVillager.StockInfo[-1].History"}]

# 変化を求める
scoreboard players set @s _ -1
execute store result score _ Calc run data get storage mob_data: StockVillager.StockInfo[-1].History[-3]
execute store result score # Calc run data get storage mob_data: StockVillager.StockInfo[-1].History[-2]
scoreboard players operation # Calc -= _ Calc
execute if score # Calc matches ..-1 run scoreboard players operation # Calc *= @s _
#tellraw @a ["変化1: ",{"score":{"name":"#","objective":"Calc"}}]
execute store result score _ _ run data get storage mob_data: StockVillager.StockInfo[-1].History[-2]
execute store result score # _ run data get storage mob_data: StockVillager.StockInfo[-1].History[-1]
scoreboard players operation # _ -= _ _
execute if score # _ matches ..-1 run scoreboard players operation # _ *= @s _
#tellraw @a ["変化2: ",{"score":{"name":"#","objective":"_"}}]
scoreboard players operation # _ -= # Calc
#tellraw @a ["変化の変化: ",{"score":{"name":"#","objective":"_"}}]

# # _が -1 ~ 1 以外なら符号反転
execute unless score # _ matches -1..1 run scoreboard players operation # _ *= @s _
# # _が 0 なら3回前の変化の2倍
execute if score # _ matches 0 store result score _ Calc run data get storage mob_data: StockVillager.StockInfo[-1].History[-4]
execute if score # _ matches 0 store result score # Calc run data get storage mob_data: StockVillager.StockInfo[-1].History[-3]
execute if score # _ matches 0 run scoreboard players operation # Calc -= _ Calc
execute if score # _ matches 0 if score # Calc matches ..-1 run scoreboard players operation # Calc *= @s _
execute if score # _ matches 0 run scoreboard players operation # _ = # Calc
execute if score # _ matches 0 run scoreboard players operation # _ += # Calc

#tellraw @a ["影響値: ",{"score":{"name":"#","objective":"_"}}]

# 変動値を求める
# 基本は -12 ~ 1
execute store result score _ Random run function calc:random
scoreboard players set _ _ 14
scoreboard players operation _ Random %= _ _
scoreboard players remove _ Random 12

#tellraw @a ["乱数: ",{"score":{"name":"_","objective":"Random"}}]

scoreboard players operation _ Random += # _

#tellraw @a ["変動結果: ",{"score":{"name":"_","objective":"Random"}}]

# 変動させる
execute store result score _ _ run data get storage mob_data: StockVillager.Recipe.sell.Count
scoreboard players operation _ _ += _ Random
execute if score _ _ matches ..0 run scoreboard players set _ _ 1
execute if score _ _ matches 64.. run scoreboard players set _ _ 64
execute store result storage mob_data: StockVillager.Recipe.sell.Count byte 1 run scoreboard players get _ _

# 取引回数を減らす
execute store result storage mob_data: StockVillager.Recipe.xp int 1 run data get storage mob_data: StockVillager.Recipe.xp 0.9999999999

# 傾向を計算する
execute store result score _ Calc run data get storage mob_data: StockVillager.StockInfo[-1].History[-2]
execute store result score # Calc run data get storage mob_data: StockVillager.StockInfo[-1].History[-1]
scoreboard players operation # Calc -= _ Calc
execute if score # Calc matches ..-1 run scoreboard players operation # Calc *= @s _
execute store result score # _ run data get storage mob_data: StockVillager.StockInfo[-1].History[-1]
scoreboard players operation # _ -= _ _
execute if score # _ matches ..-1 run scoreboard players operation # _ *= @s _
scoreboard players operation # _ -= # Calc
execute unless score # _ matches -2..2 run scoreboard players operation # _ *= @s _

# 残り取引数
execute store result score _ Calc run data get storage mob_data: StockVillager.Recipe.maxUses
execute store result score # Calc run data get storage mob_data: StockVillager.Recipe.uses
scoreboard players operation _ Calc -= # Calc

# 取引状況を表示する
execute in area:control_area unless score _ Calc matches 0 run data modify block 2 3 2 Text1 set value '[{"text":"","bold":true,"color":"aqua"}]'
execute in area:control_area if score _ Calc matches 0 run data modify block 2 3 2 Text1 set value '[{"text":"","bold":true,"color":"aqua","strikethrough":true}]'
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"translate":"取引番号："},{"storage":"mob_data:","nbt":"StockVillager.Recipe.buy.tag.Stock.ID"}," / ",{"translate":"残り取引："},[{"storage":"mob_data:","nbt":"StockVillager.Recipe{xp:5}.xp","color":"aqua"},{"storage":"mob_data:","nbt":"StockVillager.Recipe{xp:4}.xp","color":"aqua"},{"storage":"mob_data:","nbt":"StockVillager.Recipe{xp:3}.xp","color":"yellow"},{"storage":"mob_data:","nbt":"StockVillager.Recipe{xp:2}.xp","color":"yellow"},{"storage":"mob_data:","nbt":"StockVillager.Recipe{xp:1}.xp","color":"red"},{"storage":"mob_data:","nbt":"StockVillager.Recipe{xp:0}.xp","color":"red"}],"/5"," / ",{"translate":"買値："},{"storage":"mob_data:","nbt":"StockVillager.StockInfo[-1].BuyCount"}," / ",{"translate":"売値："},{"score":{"name":"_","objective":"_"}}," / "]'
execute in area:control_area if score # _ matches ..-002 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"translate":"傾向："},{"text":"⇩⇩","color":"blue"}]'
execute in area:control_area if score # _ matches -1..-1 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"translate":"傾向："},{"text":"⇩ ","color":"blue"}]'
execute in area:control_area if score # _ matches 00..00 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"translate":"傾向："},{"text":"?! ","color":"yellow"}]'
execute in area:control_area if score # _ matches 01..01 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"translate":"傾向："},{"text":"⇧ ","color":"red"}]'
execute in area:control_area if score # _ matches 0002.. run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},{"translate":"傾向："},{"text":"⇧⇧","color":"red"}]'
execute in area:control_area run data modify storage mob_data: StockVillager.InfoLore append from block 2 3 2 Text1

execute unless data storage mob_data: StockVillager.Recipe{xp:0} in area:control_area unless score _ Calc matches 0 run tellraw @a[nbt={Inventory:[{tag:{Stock:{}}}]}] {"nbt":"Text1","block":"2 3 2","interpret":true}

# 取引の登録
execute unless data storage mob_data: StockVillager.Recipe{xp:0} run data modify storage mob_data: StockVillager.Exchanged append from storage mob_data: StockVillager.Recipe
execute unless data storage mob_data: StockVillager.Recipe{xp:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StockInfo append from storage mob_data: StockVillager.StockInfo[-1]
data remove storage mob_data: StockVillager.StockInfo[-1]

