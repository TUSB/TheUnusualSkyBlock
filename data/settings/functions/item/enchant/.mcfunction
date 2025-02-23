#成功フラグ初期化
scoreboard players set _ Ret 0
#正しい組み合わせか確認
execute store success score _ Ret if predicate settings:item/enchant/item/sword if predicate settings:item/enchant/stone/sword
execute store success score _ Ret if predicate settings:item/enchant/item/trident if predicate settings:item/enchant/stone/trident
execute store success score _ Ret if predicate settings:item/enchant/item/carrot_on_a_stick if predicate settings:item/enchant/stone/carrot_on_a_stick
execute store success score _ Ret if predicate settings:item/enchant/item/bow if predicate settings:item/enchant/stone/bow
execute store success score _ Ret if predicate settings:item/enchant/item/crossbow if predicate settings:item/enchant/stone/crossbow
execute store success score _ Ret if predicate settings:item/enchant/item/axe if predicate settings:item/enchant/stone/axe
execute store success score _ Ret if predicate settings:item/enchant/item/tool if predicate settings:item/enchant/stone/tool
execute store success score _ Ret if predicate settings:item/enchant/item/fishing_rod if predicate settings:item/enchant/stone/fishing_rod
execute store success score _ Ret if predicate settings:item/enchant/item/shield if predicate settings:item/enchant/stone/shield
execute store success score _ Ret if predicate settings:item/enchant/item/helmet if predicate settings:item/enchant/stone/helmet
execute store success score _ Ret if predicate settings:item/enchant/item/chestplate if predicate settings:item/enchant/stone/chestplate
execute store success score _ Ret if predicate settings:item/enchant/item/leggings if predicate settings:item/enchant/stone/leggings
execute store success score _ Ret if predicate settings:item/enchant/item/boots if predicate settings:item/enchant/stone/boots
#成功フラグを返す
return run scoreboard players get _ Ret
