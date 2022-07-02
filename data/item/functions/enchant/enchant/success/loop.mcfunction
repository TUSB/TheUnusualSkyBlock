#ランダムTier = min(1,floor(石のTier/2)～石のTier)
scoreboard players set @s _ 2
execute store result score @s Calc store result score _ Level run data get storage item: Items[{Slot:22b}].tag.Tier
scoreboard players operation @s Calc /= @s _
scoreboard players operation _ Level -= @s Calc
scoreboard players add _ Level 1
execute store result score @s _ run function calc:random
scoreboard players operation @s _ %= _ Level
scoreboard players operation @s _ += @s Calc
execute if score @s _ matches 0 run scoreboard players set @s _ 1
#ブロックを更新
function item:system/shulker_box/save
#エンチャントをルート
data remove block ~ ~ ~ Items[{Slot:13b}]
loot replace block ~ ~ ~ container.13 loot settings:item/enchant/item/
#エンチャント情報を保存
execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify storage item: Enchant.Item set from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:13b}] run function item:enchant/enchant/success/save
#再帰
execute store result storage item: Enchant.Loop int 1 run data get storage item: Enchant.Loop 0.9999999999
execute unless data storage item: {Enchant:{Loop:0}} run function item:enchant/enchant/success/loop
