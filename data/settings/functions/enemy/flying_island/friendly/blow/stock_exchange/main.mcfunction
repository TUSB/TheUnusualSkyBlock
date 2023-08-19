### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"《証券取引所》カブダス","color":"#00FFC2","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",VillagerData:{level:99,profession:"librarian",type:"plains"},Tags:[DelayedData,HasAI,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:bread",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"ソラカブは寝かせすぎると腐るよ。ちゃんと売れる時に売ろうね！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:200,Current:200},Call:[{Name:"Function",Tags:[FlyingIsland,Friendly,Blow,StockExchange,Update]}]}]}]}
