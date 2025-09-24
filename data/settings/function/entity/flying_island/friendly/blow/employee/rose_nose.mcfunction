### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnInit,AnalyseLog,"UpdateOffers"],CustomName:'{"translate":"《駅券販売店員》ローズ・ノーズ","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"cartographer",type:"swamp"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{SpawnTags:[FlyingIsland,Friendly,Blow,Employee,RoseNose]}}},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":5}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s鼻の香りがする。","with":[{"translate":"【能力：取引・無敵】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[FlyingIsland,Friendly,Blow,Employee,RoseNoseLines]}]}
