### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"《証券取引所》カブダス","color":"#00FFC2","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:30b},sell:{id:"minecraft:bread",tag:{CustomModelData:1,CustomAttributes:1b,display:{Name:'{"translate":"ソラカブ","color":"#B0D9FF","bold":true,"italic":false}',Lore:['{"translate":"毎日価値が変動する不思議な株。","color":"#FFEB00","italic":false}','{"translate":"数日経つと腐り価値がなくなる。","color":"#FFEB00","italic":false},[{"translate":"取引番号："."color":"white","italic":false,"bold":true},{"text":"1"}]']}},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"plains"},Tags:[DelayedData,HasAI,CallOnInit,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:bread",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"ソラカブは寝かせすぎると腐るよ。ちゃんと売れる時に売ろうね！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[FlyingIsland,Friendly,Blow,StockExchange,Lines]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:250,Max:400,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,ExitExchange]}]},{Interval:{Min:5,Max:5,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[FlyingIsland,Friendly,Blow,StockExchange,Update]}]}]}]}
