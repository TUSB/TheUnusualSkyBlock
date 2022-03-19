#当たったPlayerを凍らせる
data modify storage mob_data: Call.Loop set value 0
function makeup:skill/enemy/laser/loop/frozenlazer/ice_effect