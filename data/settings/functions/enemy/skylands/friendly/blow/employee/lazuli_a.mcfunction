### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[LimitedTrades,UpdateOffers],CustomName:'{"translate":"《魔石》魔商・ラズリー","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",VillagerData:{level:99,profession:"cartographer",type:"snow"},DeathLootTableSeed:2147483647L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{SpawnTags:[Skylands,Friendly,Blow,Employee,LazuliA]}},{},{},{id:"minecraft:amethyst_cluster",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
#Function
data modify storage tusb_mob: Offers set from storage tusb_mob: "即時ステータス"."ベース".Offers
function settings:enemy/skylands/friendly/blow/employee/lazuli_b
data modify storage tusb_mob: Offers.Recipes append from storage tusb_mob: "即時ステータス"."ベース".Offers.Recipes[]
data modify storage tusb_mob: "即時ステータス"."ベース".Offers set from storage tusb_mob: Offers
