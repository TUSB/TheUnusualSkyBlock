### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Summon,ClusterCreeper,Cluster],Level:1}]],Count:5,Settings:[{Name:"Rotation1",Direction:[0f,-30f],Absolute:{Vertical:true}}]},{Name:"Kill"}]}}
