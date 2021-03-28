#元のLoreを保存
data modify storage item: Items[{Slot:4b}].tag.OriginalLore set value []
data modify storage item: Items[{Slot:4b}].tag.OriginalLore append from storage item: Items[{Slot:4b}].tag.display.Lore[]
#EnchantmentsとLoreを初期化
data modify storage item: Items[{Slot:4b}].tag.Enchantments set value []
data modify storage item: Items[{Slot:4b}].tag.display.Lore set value []
#石のTierを取得
execute store result score @s _ run data get storage item: Items[{Slot:22b}].tag.Tier
#石のエンチャントをルート
loot replace block ~ ~ ~ container.13 loot settings:item/enchant/stone
data modify storage item: Enchant.Item set from block ~ ~ ~ Items[{Slot:13b}]
#石のエンチャント情報を保存
function item:enchant/enchant/success/save
#ランダムエンチャント数をロール 0～4 + ランダム石なら1
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 5
scoreboard players operation _ Calc %= _ _
execute if data storage item: {Items:[{Slot:22b,tag:{StoneID:"謎"}}]} run scoreboard players add _ Calc 1
execute store result storage item: Enchant.Loop int 1 run scoreboard players get _ Calc
#ランダムエンチャント付与
execute unless data storage item: {Enchant:{Loop:0}} run function item:enchant/enchant/success/loop
#エンチャント済みタグ付与
data modify storage item: Items[{Slot:4b}].tag.Enchantments append value {id:"tusb:エンチャント済み"}
#OriginalLoreをappend
data modify storage item: Items[{Slot:4b}].tag.display.Lore append from storage item: Items[{Slot:4b}].tag.OriginalLore[]
#石の個数-1
execute store result score _ _ run data get storage item: Items[{Slot:22b}].Count
scoreboard players remove _ _ 1
execute store result storage item: Items[{Slot:22b}].Count byte 1 run scoreboard players get _ _
