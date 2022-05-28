### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Exit:{Time:30,TimeCount:30}},{Index:3,Exit:{Time:30,TimeCount:30}},{Index:4,Exit:{Time:30,TimeCount:30}}]}
