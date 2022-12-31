#残り容量をチェック
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Bundle.tag.Items[].Count
execute store result score _ Calc run function calc:list/sum/x1
execute if score _ Calc matches ..63 run function item:emerald_bundle/success
