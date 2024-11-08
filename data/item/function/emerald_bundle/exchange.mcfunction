#> item:emerald_bundle/exchange
#エメラルドを両替して入れる
clear @s emerald 64
data modify storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents" append from block 2 2 2 Items[0]

#再帰処理
scoreboard players remove _ Calc 1
execute if score _ Calc matches 1.. run function item:emerald_bundle/exchange
