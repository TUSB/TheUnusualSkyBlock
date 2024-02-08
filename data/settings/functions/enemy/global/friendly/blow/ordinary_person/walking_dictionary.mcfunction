### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"《一般村人》モノシリー","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,Tags:[DelayedData,CallOnInit,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:16}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s %2$s あなたはアナライズを試みたがこの者が何を考えているのかはわからなかった。","with":[{"translate":"【能力：無敵】","color":"#00FF00"},{"translate":"%1$s興味本位に人の考えを覗くのは頂けないなぁ","color":"#FF0000","bold":true,"obfuscated":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Friendly,Blow,OrdinaryPerson,SkylandsLines]},{Name:"Function",Tags:[Global,Friendly,Blow,OrdinaryPerson,FlyingIslandLines]},{Name:"Function",Tags:[Global,Friendly,Blow,OrdinaryPerson,CloudiaLines]}]}
