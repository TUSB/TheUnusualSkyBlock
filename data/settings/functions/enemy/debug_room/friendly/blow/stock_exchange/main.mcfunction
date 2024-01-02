### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:40b},sell:{id:"minecraft:bread",tag:{CustomModelData:1,CustomAttributes:1b,Stock:{Status:"normal"},display:{Name:'{"translate":"ソラカブ","color":"#B0D9FF","bold":true,"italic":false}',Lore:['{"translate":"毎日価値が変動する不思議な株。","color":"#FFEB00","italic":false}','{"translate":"数日経つと腐り価値がなくなる。","color":"#FFEB00","italic":false},[{"translate":"取引番号："."color":"white","italic":false,"bold":true},{"text":"1"}]']}},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"plains"},Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:200,Current:200},Call:[{Name:"Function",Tags:[DebugRoom,Friendly,Blow,StockExchange,Update]}]}]}]}
