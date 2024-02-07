# Popup代替表示
data modify storage calc: show_text.display set value {Tags:["ShowText","HasAI"],transformation:{scale:[1f,1f,1f]},billboard:"center",text:'[{"storage":"popup:","nbt":"data.prefix","interpret":true,"font":"number"},[{"storage":"popup:","nbt":"data.format","interpret":true},{"storage":"popup:","nbt":"data.value_prefix","interpret":false},{"storage":"popup:","nbt":"data.value","interpret":true},{"storage":"popup:","nbt":"data.value_suffix","interpret":false}],{"storage":"popup:","nbt":"data.suffix","interpret":true}]',background:0,see_through:true}
execute store result storage calc: show_text.display.transformation.scale[] float 0.01 run data get storage popup: data.size 100

# この対応は他で真似しない方がいいよ(2回目)
summon minecraft:text_display ~ ~ ~ {Tags:["NewShowText"],alignment:"center"}

# 前回呼び出されたOhMyDatを取得しこのfuncitonの処理が終わった後に状態を戻す
execute store result score _ _ run data get storage oh_my_dat: last_id
execute as @e[distance=..0.01,tag=NewShowText,tag=!Initialized] run function #oh_my_dat:please

data modify entity @e[distance=..0.01,tag=NewShowText,tag=!Initialized,limit=1] {} merge from storage calc: show_text.display
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Current:50},Loop:{Current:1},Call:[{Name:"Kill"}]}]}]}
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skill[0].Interval.Current int 1 run data get storage popup: data.duration 20

scoreboard players operation _ OhMyDatID = _ _
function #oh_its_dat:please