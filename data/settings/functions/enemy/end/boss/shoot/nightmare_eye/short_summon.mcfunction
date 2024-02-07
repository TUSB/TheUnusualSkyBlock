### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Once:2,Skill:[{Interval:{Min:600,Max:900,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[-20f,-10f],DirectionRange:[40f,25f]}],Name:"Spawn",Count:2,CountRange:1,SpawnEntities:[[{Tags:[End,Boss,Shoot,NightmareEye,ShortNightmareEye,SpawnParticles],Level:40}],[{Tags:[End,Boss,Shoot,NightmareEye,ShortNightmareEyeDirection],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
