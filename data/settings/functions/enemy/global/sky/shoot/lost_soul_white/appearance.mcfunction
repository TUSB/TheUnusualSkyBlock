### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Void,Sky,Shoot,LostSoulWhite,NormalState]}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:15d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Void,Sky,Shoot,LostSoulWhite,ContactState]}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"player",Radius:15d,IgnoreBlocks:true}}]}}]}
