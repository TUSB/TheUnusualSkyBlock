#> player:death_item_drop/tomb_drop_loop
#
# 墓ドロップ ループ処理
#
# @within function player:death_item_drop/tomb_drop

summon item ~ ~ ~ {Glowing:1b,Health:32767,Item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_model_data":1000,"minecraft:unbreakable":{},"minecraft:item_name":"{\"translate\":\"<死んだプレイヤーの名前>の墓\",\"color\":\"#FFFFFF\",\"bold\":true,\"italic\":false}","minecraft:lore":["{\"translate\":\"名前が彫り込まれた者でないと\",\"color\":\"#CCCCCC\",\"italic\":false}","{\"translate\":\"掘り起こす事は出来ないようだ。\",\"color\":\"#CCCCCC\",\"italic\":false}","[{\"text\":\"\",\"color\":\"white\",\"italic\":false},{\"text\":\"C\",\"font\":\"icon\",\"color\":\"light_purple\"},{\"text\":\" 墓掘り\"}]","{\"text\":\"---TUSBMemory---\",\"obfuscated\":true,\"color\":\"gray\",\"italic\":false}"],"minecraft:custom_data":"{CustomAttributes:1b,Tomb:1b,Skill:{Type:\"TUSBMemory\",Initializing:1b,Job:\"共通\",Name:\"墓掘り\",Level:1,Interval:0,Trigger:\"スニークする\",Count:1}}"}}}
# loot spawn ~ ~ ~ loot item:item/stone_sword/tomb/tomb_1
data modify entity @n[type=item,distance=0] Item.components."minecraft:custom_model_data" set from storage item: Item[0].components."minecraft:custom_model_data"
data modify entity @n[type=item,distance=0] Item.components."minecraft:custom_data".DeathInventory set from storage item: Item[0].components."minecraft:custom_data".DeathInventory
data modify entity @n[type=item,distance=0] Item.components."minecraft:custom_data".DeathUUID set from storage item: Item[0].components."minecraft:custom_data".DeathUUID
data modify entity @n[type=item,distance=0] Item.components."minecraft:item_name" set from storage item: Item[0].components."minecraft:item_name"
data remove storage item: Item[0]
execute if data storage item: Item[0] positioned ~ ~0.01 ~ run function player:death_item_drop/tomb_drop_loop
