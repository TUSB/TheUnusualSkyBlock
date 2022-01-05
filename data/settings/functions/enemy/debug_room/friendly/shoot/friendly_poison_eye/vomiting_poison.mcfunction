### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:200,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:30d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Friendly,Shoot,FriendlyPoisonEye,PoisonBall],Level:1}],[{Tags:[DebugRoom,Friendly,Shoot,FriendlyPoisonEye,PoisonBallDirection],Level:1}]],Direction:[0f,0f],Absolute:{Vertical:true}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
