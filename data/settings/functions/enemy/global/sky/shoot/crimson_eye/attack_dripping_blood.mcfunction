### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:0d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,CrimsonEye,DrippingBlood],Level:1}],[{Tags:[Global,Sky,Shoot,CrimsonEye,DrippingBloodAppearance],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}