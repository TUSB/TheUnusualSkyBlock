### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"ホーリー・ホリホリック","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:wooden_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:stone_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:golden_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:iron_pickaxe",Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"snow"},DeathLootTableSeed:2147483647L,Tags:[DelayedData,HasAI,LimitedTrades]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:3000,Max:3000,Current:3000},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Friendly,Blow,Employee,HolyHoriHollick],Level:100}]]},{Name:"Kill"}]}]}]}
