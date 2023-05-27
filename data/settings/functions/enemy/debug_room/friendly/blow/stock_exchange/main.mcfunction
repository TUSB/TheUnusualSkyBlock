### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:30b},sell:{id:"minecraft:beetroot",Count:1b,tag:{Stock:{ID:1},display:{Lore:['[{"translate":"取引番号："},{"text":"1"}]']}}},maxUses:2147483647,rewardExp:false}]},VillagerData:{level:99,profession:"librarian",type:"plains"},Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:200,Current:200},Call:[{Name:"Function",Tags:[DebugRoom,Friendly,Blow,StockExchange,Update]}]}]}]}
