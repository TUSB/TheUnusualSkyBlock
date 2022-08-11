### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:7,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:100,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Call:[{}]}]},{Index:3,Skill:[{Call:[{}]}]},{Index:4,Skill:[{Call:[{}]}]},{Index:5,Skill:[{Call:[{}]}]},{Index:6,Skill:[{Call:[{}]}]},{Index:7,Skill:[{Call:[{}]}]}]}
