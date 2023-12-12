### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnInit,AnalyseLog,UpdateOffers],CustomName:'{"translate":"《ポテト教団》ハッシュ","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:131,CustomAttributes:1b,display:{Name:'{"translate":"ポテトティップス","color":"gold","italic":false,"bold":false}',Lore:['{"translate":"叡智の味がするポテトチップス。","color":"#FFFFFF","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" Tips表示"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"Tips表示",Level:1,Interval:60,Trigger:"手に持って右クリック",Count:32}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:potato",tag:{display:{Name:'{"translate":"聖なるポテト","color":"#FF87F9","bold":true,"italic":false}',Lore:['{"translate":"精進なさい。","color":"white"}']}},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:baked_potato",tag:{display:{Name:'{"translate":"邪悪なるベイクドポテト","color":"#FF87F9","bold":true,"italic":false}',Lore:['{"translate":"もう戻れない。","color":"white"}']}},Count:1b},maxUses:1},{buy:{id:"minecraft:poisonous_potato",Count:1b},sell:{id:"minecraft:emerald",Count:16b},maxUses:2147483647},{buy:{id:"minecraft:poisonous_potato",Count:32b},sell:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:26,Wearable:true,display:{Name:'{"translate":"ポテト教の仮面","color":"#FF3333","bold":true,"italic":false}',Lore:['{"translate":"特殊装備枠。","color":"#CCCCCC","italic":false}','{"translate":"右クリックで頭に装備可能。","color":"#CCCCCC","italic":false}','{"translate":"毒のジャガイモでできている仮面。","color":"#FFFFFF","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" スカイウォーク"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"スカイウォーク",Level:1,Interval:80,Trigger:"スニークする",Count:32},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"カスタム",Amount:20d,Operation:0,UUID:[I;21,0,0,10],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"カスタム",Amount:0.5d,Operation:1,UUID:[I;21,0,0,21],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"カスタム",Amount:0.15d,Operation:1,UUID:[I;21,0,0,31],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:10d,Operation:0,UUID:[I;21,0,0,40],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"カスタム",Amount:-0.1d,Operation:1,UUID:[I;21,0,0,51],Slot:"head"},{AttributeName:"generic.armor",Name:"カスタム",Amount:0.1d,Operation:1,UUID:[I;21,0,0,61],Slot:"head"}]},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"cleric",type:"plains"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{SpawnTags:[FlyingIsland,Friendly,Blow,Employee,Hashe]}},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:26}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"イモイモホシイモジャガポテト。イモイモホシイモジャガポテト。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[FlyingIsland,Friendly,Blow,Employee,HasheLines]}]}
