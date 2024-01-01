### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"《一般村人》カブに喰われた人","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,VillagerData:{level:99,profession:"nitwit",type:"swamp"},Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[FlyingIsland,Friendly,Blow,Employee,StockVictimLines]}],TurnCount:2,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:200,Max:200,Current:100},Loop:{Max:1,Current:1},Call:[{Name:"Kill",Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20,IgnoreBlocks:true},Inverse:true}]}]}]}]}
