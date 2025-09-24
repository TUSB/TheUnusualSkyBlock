### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnTimeOut,CooldownRequired,AnalyseLog,"UpdateOffers"],CustomName:'{"translate":"《武器防具》トッテツ","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,PortalCooldown:6000,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"weaponsmith",type:"taiga"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{SpawnTags:[Global,Friendly,Blow,Employee,Totetsu1]}}},{},{},{id:"minecraft:anvil",count:1}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s気が向いたときにタイムセール開くぞ。運が良ければ買えるかもな？","with":[{"translate":"【能力：取引変更・無敵】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Execute:"If",Condition:[{Inverse:1b,Name:"has_target",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Friendly,Blow,Employee,TotetsuTimeSale]},{Name:"function",Tags:[Global,Friendly,Blow,Employee,TotetsuKeepTrades]}]}
