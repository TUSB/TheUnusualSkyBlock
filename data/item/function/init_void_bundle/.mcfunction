#> item:init_void_bundle/
#oh_my_datのVoidItemsを新しいものから300個バンドルに移す
function #oh_my_dat:please
data modify storage item: Items set value []
data modify storage item: Items append from entity @s Inventory[{components:{"minecraft:custom_data":{VoidBundle:1b}}}]
data modify storage item: Count set value 300
function item:init_void_bundle/loop
data remove storage item: Items[0].components."minecraft:custom_data".VoidItems[].Slot

#VoidItemsがある場合、名前を変更
execute if data storage item: Items[0].components."minecraft:custom_data".VoidItems[0] in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '{"translate":"%sの虚無のバンドル","color":"light_purple","bold":true,"italic":false,"with":[{"selector":"@a[advancements={item:init_void_bundle=true}]","bold":false}]}'
execute if data storage item: Items[0].components."minecraft:custom_data".VoidItems[0] in area:control_area run data modify storage item: Items[0].components."minecraft:item_name" set from block 2 3 2 front_text.messages[0]

#VoidItemsがない場合、購入費をVoidItemsに入れて返金 TODO:通貨に変更 -> バンクからの購入価格に変更(v13α2)
execute unless data storage item: Items[0].components."minecraft:custom_data".VoidItems[0] in area:control_area run loot replace block 2 2 2 container.0 loot item:item/iron_nugget/currency_gigant_emerald
execute unless data storage item: Items[0].components."minecraft:custom_data".VoidItems[0] in area:control_area run data modify storage item: Items[0].components."minecraft:custom_data".VoidItems append from block 2 2 2 Items[0]

#使用回数をセット
execute store result storage item: Items[0].components."minecraft:custom_data".Skill.Count int 1 if data storage item: Items[0].components."minecraft:custom_data".VoidItems[]

#未開封タグ削除
data remove storage item: Items[0].components."minecraft:custom_data".VoidBundle

#プレイヤーに渡す
data modify storage item: Slot set from storage item: Items[0].Slot
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player

#トリガー解除
advancement revoke @s only item:init_void_bundle
