### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":1037,"minecraft:firework_explosion":{shape:"small_ball"}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],Passenger:{Type:"down",Check:false,Call:[{Name:"kill"}]}}
