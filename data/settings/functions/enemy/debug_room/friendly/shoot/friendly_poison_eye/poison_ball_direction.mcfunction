### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Radius:0.1f,Duration:2147483647,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"glow_squid_ink"}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Friendly,Shoot,FriendlyPoisonEye,PoisonBallResidual],Level:1}]],Direction:[0f,0f]},{Condition:[{Name:"RandomChance",Chance:0.75d}],Tags:[DebugRoom,Friendly,Shoot,FriendlyPoisonEye,PoisonEffect]},{Name:"Kill"}]}}
