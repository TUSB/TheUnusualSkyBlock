### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnTimeOut,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,AuraResidual],Level:1}]],Count:1},{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[End,Boss,Blow,NightmareEye,AuraAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
