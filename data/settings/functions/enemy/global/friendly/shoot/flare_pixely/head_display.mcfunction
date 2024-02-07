### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0.819f,0f,0f,0.574f],right_rotation:[0f,-1f,0f,0f],translation:[0f,0.3f,-0.25f],scale:[0.85f,0.85f,0.85f]},Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1012}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}]}
