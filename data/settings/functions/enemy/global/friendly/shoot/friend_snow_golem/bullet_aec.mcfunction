### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"dust 0.839 0.980 1.000 0.5",Radius:0.1f,Duration:2147483647,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Function",Tags:[Global,Friendly,Shoot,FriendSnowGolem,Particles]},{Name:"Kill"}]}}
