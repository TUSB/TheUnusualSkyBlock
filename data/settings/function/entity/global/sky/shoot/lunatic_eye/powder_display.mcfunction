### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":151,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;10027263]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"function",Tags:[Global,Sky,Shoot,LunaticEye,PowderDisplayTick]}],Passenger:{Type:"down",Check:false,Call:[{Name:"kill"}]}}
