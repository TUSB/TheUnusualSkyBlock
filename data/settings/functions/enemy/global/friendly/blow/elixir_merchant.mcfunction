### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"エリクサー商人","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:30b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36,CustomAttributes:1b,Enchantments:[{}],display:{Name:'{"translate":"エリクサー","color":"dark_purple","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" HPMP割合回復"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"HPMP割合回復",Level:1,Interval:240,Trigger:"手に持って右クリック",Count:3}},Count:1b},maxUses:2},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:37,CustomAttributes:1b,Enchantments:[{}],display:{Name:'{"translate":"ラストエリクサー","color":"dark_purple","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" HPMP割合回復Ⅱ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"HPMP割合回復",Level:2,Interval:240,Trigger:"手に持って右クリック",Count:3}},Count:1b},maxUses:2},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:4b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:38,CustomAttributes:1b,Enchantments:[{}],display:{Name:'[{"translate":"エ","color":"red","italic":false},{"translate":"ク","color":"gold","italic":false},{"translate":"ス","color":"yellow","italic":false},{"translate":"エ","color":"green","italic":false},{"translate":"リ","color":"dark_green","italic":false},{"translate":"ク","color":"dark_aqua","italic":false},{"translate":"サ","color":"dark_purple","italic":false},{"translate":"ー","color":"light_purple","italic":false}]',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" HPMP割合回復Ⅲ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"HPMP割合回復",Level:3,Interval:240,Trigger:"手に持って右クリック",Count:3}},Count:1b},maxUses:2},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"snow"},DeathLootTableSeed:3L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:36}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/carrot_on_a_stick/elixir",Count:1,Chance:0.1d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.35d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"近頃は殺して奪い取る山賊が出るらしいぞ。君も気を付けるのだ。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"MinHP",Inverse:true,HP:50,Percent:true},{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"Kill"}]}
