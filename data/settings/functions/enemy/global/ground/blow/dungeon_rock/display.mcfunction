### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",CustomName:'{"translate":"オモイワー","color":"#FF8000","bold":true}',PortalCooldown:3000,Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:127}},item_display:"none",interpolation_duration:3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[0.0f,0.0f,0.0f]}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,PassengersKill]},{Name:"Kill"}]}}
