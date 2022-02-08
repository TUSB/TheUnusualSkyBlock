#合成を実行
execute as @e[tag=AnvilChest,distance=..0.5] unless data entity @s Items[{Slot:13b}] run function item:lapidary/lapidary/check/pickup
#プレイヤー存在フラグ 0..1で存在
scoreboard players set _ _ 2
#NoHoldアイテムを掴んだ時点で削除
execute as @a[distance=..7] store success score _ _ run clear @s #item:lapidary{NoHold:1b}
#プレイヤーが近くにいれば継続
execute if score _ _ matches 0..1 run schedule function item:lapidary/anvil/schedule 2t replace
execute unless score _ _ matches 0..1 as @e[tag=AnvilChest,distance=..0.5] run data modify entity @s Items[{tag:{NoHold:1b}}].Count set value 0b
execute unless score _ _ matches 0..1 run kill @e[tag=Anvil,distance=..0.5]
execute unless score _ _ matches 0..1 run tp @e[type=item,distance=..1] ~ ~1.1 ~ ~ ~
