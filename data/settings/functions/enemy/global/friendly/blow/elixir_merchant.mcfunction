### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"エリクサー商人","color":"#00FF00","bold":true}',PortalCooldown:800,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:16b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36,display:{Name:'{"translate":"エリクサー","color":"dark_purple","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" HPMP割合回復"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"HPMP割合回復",Level:1,Trigger:"人参棒を使用",Count:3}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:37,display:{Name:'{"translate":"ラストエリクサー","color":"dark_purple","bold":true,"italic":false}',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" HPMP割合回復Ⅱ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"HPMP割合回復",Level:2,Trigger:"人参棒を使用",Count:3}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:38,display:{Name:'[{"translate":"エ","color":"red","italic":false},{"translate":"ク","color":"gold","italic":false},{"translate":"ス","color":"yellow","italic":false},{"translate":"エ","color":"green","italic":false},{"translate":"リ","color":"dark_green","italic":false},{"translate":"ク","color":"dark_aqua","italic":false},{"translate":"サ","color":"dark_purple","italic":false},{"translate":"ー","color":"light_purple","italic":false}]',Lore:['[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" HPMP割合回復Ⅲ"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"HPMP割合回復",Level:3,Trigger:"人参棒を使用",Count:3}},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"snow"},DeathLootTableSeed:3L,Tags:[Mob,DelayedData,CooldownRequired,LimitedTrades,HasLootTable]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"elixir",Count:1,Chance:0.25d}]
