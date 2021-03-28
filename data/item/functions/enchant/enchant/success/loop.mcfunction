#ランダムTier = 1～石のTier
execute store result score @s _ run function calc:random
execute store result score _ _ run data get storage item: Items[{Slot:22b}].tag.Tier
scoreboard players operation @s _ %= _ _
scoreboard players add @s _ 1
#エンチャントをルート
loot replace block ~ ~ ~ container.13 loot settings:item/enchant/item/
data modify storage item: Enchant.Item set from block ~ ~ ~ Items[{Slot:13b}]
#エンチャント情報を保存
function item:enchant/enchant/success/save
#再帰
execute store result storage item: Enchant.Loop int 1 run data get storage item: Enchant.Loop 0.9999999999
execute unless data storage item: {Enchant:{Loop:0}} run function item:enchant/enchant/success/loop
