### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:600,Max:600,Current:600},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,Park],Level:1}],[{Tags:[End,Boss,Blow,NightmareEye,ParkDirection],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
