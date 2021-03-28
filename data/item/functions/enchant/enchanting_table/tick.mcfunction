#エンチャント実行
execute unless data entity @s Items[{Slot:13b}] run function item:enchant/enchant/check
#NoHoldアイテムを掴んだ時点で削除
execute as @a[distance=..7] run clear @s #item:enchant{NoHold:1b}
#プレイヤーが近くにいれば継続
execute if entity @p[distance=..7] run schedule function item:enchant/enchanting_table/schedule 1t replace
execute unless entity @p[distance=..7] run data modify entity @s Items[{tag:{NoHold:1b}}].Count set value 0b
execute unless entity @p[distance=..7] run kill @e[tag=EnchantTable,distance=..0.5]
#演出
function makeup:item/enchant/tick
