### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Tags:[DelayedData,HasAI,"Garlic2"],CustomName:'{"translate":"メニクル","color":"#FF8000"}'}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:29}},item_display:"none",start_interpolation:-1,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]}}
