### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"smoke",Radius:0.1f,Duration:214748364,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]}}
