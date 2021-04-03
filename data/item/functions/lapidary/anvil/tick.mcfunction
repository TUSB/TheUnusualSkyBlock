#合成を実行
execute as @e[tag=AnvilChest,distance=..0.5] unless data entity @s Items[{Slot:13b}] run function item:lapidary/lapidary/check/pickup
#NoHoldアイテムを掴んだ時点で削除
execute as @a[distance=..7] run clear @s #item:lapidary{NoHold:1b}
#プレイヤーが近くにいれば継続
execute if entity @p[distance=..7] run schedule function item:lapidary/anvil/schedule 1t replace
execute unless entity @p[distance=..7] as @e[tag=AnvilChest,distance=..0.5] run data modify entity @s Items[{tag:{NoHold:1b}}].Count set value 0b
execute unless entity @p[distance=..7] run kill @e[tag=Anvil,distance=..0.5]
