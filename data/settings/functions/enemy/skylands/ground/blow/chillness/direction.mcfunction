### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.25f,0.25f,0.25f]},Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10077,Explosion:{Type:0}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Ground,Blow,Chillness,Tick]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]}}
