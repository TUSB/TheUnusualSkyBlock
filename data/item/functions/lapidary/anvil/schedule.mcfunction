#金床を掴んだプレイヤーを検知（Qキーで投げた場合は失敗）
execute as @a store result score @s _ run clear @s minecraft:anvil{NoHold:1b}

execute as @e[tag=AnvilAEC] at @s run function item:lapidary/anvil/tick
