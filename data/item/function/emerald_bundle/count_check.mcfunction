#> item:emerald_bundle/count_check
#残り容量をチェック
data modify storage calc: List set value []
data modify storage calc: List append from storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents"[].count
execute store result score _ Calc run function calc:list/sum/x1
execute if score _ Calc matches ..63 run function item:emerald_bundle/success
