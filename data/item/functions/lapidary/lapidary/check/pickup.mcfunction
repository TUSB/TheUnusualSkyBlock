#金床を掴んだプレイヤーがいる時
execute if entity @a[scores={_=1..},distance=..7] run function item:lapidary/lapidary/check/stone
#金床を戻す
data modify entity @s Items append value {Slot:13b,id:"minecraft:anvil",Count:1b,tag:{display:{Name:'{"translate":"石の合成","color":"green","italic":false}'},NoHold:1b,Enchantments:[{}]}}
