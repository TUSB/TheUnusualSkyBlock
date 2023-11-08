### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,0f],translation:[0f,-0.15f,0f],scale:[1f,1f,1f]},Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1013}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"},{Name:"Function",Tags:[Global,Event,Function,CommonExe,PassengersKill]}]}}
