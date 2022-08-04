
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OriginalName set from entity @s CustomName
tag @s add LifeScouter

function makeup:skill/act/common/life_scouter/success

function skill:act/common/life_scouter/bar_set

data modify entity @s CustomNameVisible set value true
