### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:1.5d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Desert,Ground,Shoot,FireMage,FlameJail],Level:1}]]},{Name:"Kill"}]}}
