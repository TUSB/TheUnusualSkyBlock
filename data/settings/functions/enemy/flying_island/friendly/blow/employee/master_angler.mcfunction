### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnInit,AnalyseLog,"UpdateOffers"],CustomName:'{"translate":"《釣り堀庭》海幸彦","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:fishing_rod",Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:9b},sell:{id:"minecraft:fishing_rod",tag:{CustomModelData:2,display:{Name:'{"translate":"疑似餌付き釣り竿","color":"#4A86E8","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"aqua","italic":false},{"translate":"%1$s%2$s(II)","color":"white","with":[{"translate":"練餌の"},{"translate":"刻印"}]}]','{"translate":"おもちゃのような疑似餌の付いた釣り竿","color":"white","italic":false}']},Engraving:{EnchantID:"練餌",Tier:2}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:14b},sell:{id:"minecraft:fishing_rod",tag:{CustomModelData:3,display:{Name:'{"translate":"高級疑似餌付き釣り竿","color":"#00FFFF","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"aqua","italic":false},{"translate":"%1$s%2$s(III)","color":"white","with":[{"translate":"練餌の"},{"translate":"刻印"}]}]','{"translate":"精巧な疑似餌の付いた釣り竿","color":"gold","italic":false}']},Engraving:{EnchantID:"練餌",Tier:3}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:fishing_rod",tag:{CustomModelData:1,display:{Name:'{"translate":"いいつりざお","color":"#FFFFFF","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"aqua","italic":false},{"translate":"%1$s%2$s(IV)","color":"white","with":[{"translate":"練餌の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"練餌",Tier:4},AttributeModifiers:[]},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:6b},buyB:{id:"minecraft:emerald",Count:27b},sell:{id:"minecraft:fishing_rod",tag:{display:{Name:'{"translate":"すごいつりざお","color":"#FFFFFF","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"aqua","italic":false},{"translate":"%1$s%2$s(VI)","color":"white","with":[{"translate":"練餌の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"練餌",Tier:6}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"farmer",type:"swamp"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{SpawnTags:[FlyingIsland,Friendly,Blow,Employee,MasterAngler]}},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:6}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s好きなだけ釣っていいぜ！ たまにやばいもの釣れるがその時はその時だ！ がっはっは！","with":[{"translate":"【能力：取引・無敵】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[FlyingIsland,Friendly,Blow,Employee,MasterAnglerLines]}]}
