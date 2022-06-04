### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"バンク","color":"#00FF00","bold":true}',PortalCooldown:1000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:emerald",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"通常世界、飛空島の上位通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"通常世界、飛空島の上位通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647},{buy:{id:"minecraft:emerald",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"通常世界、飛空島の上位通貨","color":"#999999","italic":false}']}},Count:64b},sell:{id:"minecraft:emerald",tag:{CustomModelData:2,display:{Name:'{"translate":"ギガントエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"通常世界、飛空島の最上位通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",tag:{CustomModelData:2,display:{Name:'{"translate":"ギガントエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"通常世界、飛空島の最上位通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"通常世界、飛空島の上位通貨","color":"#999999","italic":false}']}},Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"cleric",type:"savanna"},DeathLootTableSeed:10L,Tags:[Mob,DelayedData,CooldownRequired,LimitedTrades,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/mob/drop_item/villager",Count:1,Chance:0.6d}]
