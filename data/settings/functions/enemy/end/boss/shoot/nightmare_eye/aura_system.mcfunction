### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[End,Boss,Shoot,NightmareEye,AuraResidual],Level:1}]],Count:1},{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[End,Boss,Shoot,NightmareEye,AuraAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
