### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"エーテル商人","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24,CustomAttributes:1b,Enchantments:[{}],display:{Name:'{"translate":"バイルエーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['{"translate":"仄かに漂う臭みと渋みがある","color":"gray"}','{"translate":"粗雑な造りをしたポーション。","color":"gray"}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:1,Interval:80,Trigger:"手に持って右クリック",Count:5}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,CustomAttributes:1b,Enchantments:[{}],display:{Name:'{"translate":"エーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['{"translate":"一般的な市販薬と知られる","color":"gray"}','{"translate":"平凡な造りをしたポーション。","color":"gray"}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復Ⅱ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:2,Interval:80,Trigger:"手に持って右クリック",Count:5}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:26,CustomAttributes:1b,Enchantments:[{}],display:{Name:'{"translate":"ハイエーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['{"translate":"水晶の花びらが浮かぶ","color":"gray"}','{"translate":"繊細な造りをしたポーション。","color":"gray"}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復Ⅲ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:3,Interval:80,Trigger:"手に持って右クリック",Count:5}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:27,CustomAttributes:1b,Enchantments:[{}],display:{Name:'{"translate":"スーパーエーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['{"translate":"エーテルが瓶内を循環し輝きを放つ","color":"gray"}','{"translate":"神秘的な造りをしたポーション。","color":"gray"}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復Ⅳ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:4,Interval:80,Trigger:"手に持って右クリック",Count:5}},Count:1b},maxUses:4},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"mason",type:"jungle"},DeathLootTableSeed:3L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:25}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.28d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s話しかけると我々行商人はモンスターに狙われやすくなるのだ。","with":[{"translate":"【能力：逃走・取引】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"MinHP",Inverse:true,HP:50,Percent:true},{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"Kill"}]}
