### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"エーテル商人","color":"#00FF00","bold":true}',Team:"Friendly",PortalCooldown:800,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24,display:{Name:'{"translate":"バイルエーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:1,Trigger:"人参棒を使用",Count:5}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,display:{Name:'{"translate":"エーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復Ⅱ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:2,Trigger:"人参棒を使用",Count:5}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:26,display:{Name:'{"translate":"ハイエーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復Ⅲ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:3,Trigger:"人参棒を使用",Count:5}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:16b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:27,display:{Name:'{"translate":"スーパーエーテル","color":"#6AA84F","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" MP回復Ⅳ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"MP回復",Level:4,Trigger:"人参棒を使用",Count:5}},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"mason",type:"jungle"},DeathLootTableSeed:3L,Tags:[Mob,DelayedData,CooldownRequired,LimitedTrades,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/carrot_on_a_stick/high_ether",Count:1,Chance:0.25d}]
