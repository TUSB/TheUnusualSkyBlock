### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,TickingRequired,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"ホーリー・ホリホリック","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:wooden_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:stone_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:golden_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:iron_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:diamond_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:3b},sell:{id:"minecraft:netherite_pickaxe",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:netherite_ingot",Count:3b},sell:{id:"minecraft:netherite_pickaxe",Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"snow"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/vanilla_item/all/pickel_group",Count:1,Chance:0.31d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.31d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"安心して下さい、良心価格で取引しますよ。"}]'