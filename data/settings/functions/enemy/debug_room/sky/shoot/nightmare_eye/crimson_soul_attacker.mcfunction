### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:60,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,CrimsonSoulMissile],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
