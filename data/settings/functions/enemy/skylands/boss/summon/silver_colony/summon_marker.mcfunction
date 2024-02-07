### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:300,Max:600,Current:300},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:3,Range:2},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Function",Tags:[Skylands,Boss,Summon,SilverColony,SummonSummoner]}]}]}]}
