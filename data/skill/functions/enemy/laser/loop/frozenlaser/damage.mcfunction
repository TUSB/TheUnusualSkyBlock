#ループを0に。
data modify storage mob_data: Call.Loop set value 0

#ダメージ
#凍結
effect give @a[distance=..2.5] invisibility 5 4
#ウィザー
effect give @a[distance=..2.5] wither 10 1

#演出
function makeup:skill/enemy/laser/loop/frozenlazer/ice_effect