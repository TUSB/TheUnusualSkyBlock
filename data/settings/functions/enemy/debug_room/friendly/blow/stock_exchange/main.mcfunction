### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",VillagerData:{level:99,profession:"librarian",type:"plains"},Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:200,Current:200},Call:[{Name:"Function",Tags:[DebugRoom,Friendly,Blow,StockExchange,Update]}]}]}]}
