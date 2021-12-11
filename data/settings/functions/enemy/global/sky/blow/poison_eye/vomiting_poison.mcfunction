### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:100,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"player",Radius:10d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Blow,PoisonEye,PoisonBall],Level:15}],[{Tags:[Global,Sky,Blow,PoisonEye,PoisonBallDirection],Level:1}]],Direction:[0f,0f],Absolute:{Vertical:true}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
