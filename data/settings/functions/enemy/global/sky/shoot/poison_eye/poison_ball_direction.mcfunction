### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Radius:0.1f,Duration:2147483647,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"glow_squid_ink"}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,PoisonEye,PoisonBallResidual],Level:1}]]},{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,PoisonEffect]},{Name:"Kill"}]}}
