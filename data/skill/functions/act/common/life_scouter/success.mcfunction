

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LifeScouter.OriginalName set from entity @s CustomName
function skill:act/common/life_scouter/element_text
tag @s add LifeScouter

# 表示用テキストディスプレイ
summon text_display ~ ~ ~ {Tags:["LifeScouterText","Initialized"],transformation:{right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f]},"billboard":"center",see_through:true}
ride @e[tag=LifeScouterText,distance=..0.1,limit=1] mount @s

#元の名前を非表示
data modify entity @s CustomNameVisible set value 0b

function makeup:skill/act/common/life_scouter/success

function skill:act/common/life_scouter/bar_set
