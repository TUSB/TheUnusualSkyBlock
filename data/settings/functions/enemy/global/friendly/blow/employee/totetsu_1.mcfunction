### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnTimeOut,CooldownRequired,LimitedTrades,AnalyseLog,UpdateOffers],CustomName:'{"translate":"《武器防具》トッテツ","color":"#00FFC2","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,PortalCooldown:6000,DeathLootTable:"empty",VillagerData:{level:99,profession:"weaponsmith",type:"taiga"},DeathLootTableSeed:2147483647L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{SpawnTags:[Global,Friendly,Blow,Employee,Totetsu1]}},{},{},{id:"minecraft:anvil",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"気が向いたときにタイムセール開くぞ。運が良ければ買えるかもな？"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Execute:"If",Condition:[{Inverse:1b,Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Friendly,Blow,Employee,TotetsuTimeSale]},{Name:"Function",Tags:[Global,Friendly,Blow,Employee,TotetsuKeepTrades]}]}
