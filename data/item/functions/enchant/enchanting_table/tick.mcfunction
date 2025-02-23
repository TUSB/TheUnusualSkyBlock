#エンチャント実行
execute on passengers unless data entity @s Items[{Slot:13b}] run function item:enchant/enchant/check
#プレイヤーandエンチャント台存在フラグ 0..1で存在
scoreboard players set _ _ 2
#NoHoldアイテムを掴んだ時点で削除
execute as @a[distance=..7] store success score _ _ run clear @s #item:enchant{NoHold:1b}
#ブロック確認
execute unless block ~ ~0.5 ~ enchanting_table unless block ~ ~0.5 ~ end_portal_frame run scoreboard players set _ _ 2
#プレイヤーが近くにいれば継続
execute if score _ _ matches 1 on passengers run function item:enchant/enchanting_table/refill
execute if score _ _ matches 0..1 run schedule function item:enchant/enchanting_table/schedule 2t replace
execute unless score _ _ matches 0..1 run function item:enchant/enchanting_table/destroy
#演出
function makeup:item/enchant/tick
