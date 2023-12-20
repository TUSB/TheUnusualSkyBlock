### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,WanderingVillager,UpdateOffers],CustomName:'{"translate":"商業ゴブリン・メタルティンカ","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2001,CustomAttributes:1b,LootTable:"item:group/magic_stone/tier1_7/memory_star",display:{Name:'{"translate":"《魔石》メモリスター","color":"#8D00FF","bold":true,"italic":false}',Lore:['[{"translate":"???","color":"#FF0000","bold":true,"obfuscated":true},{"translate":"ﾁャ■ｽ 1/????","color":"#FF0000","bold":true,"italic":true,"obfuscated":false},{"translate":"???","color":"#FF0000","bold":true,"italic":false,"obfuscated":true},{"translate":"のバグ■ーﾀヲ記したｲ石。","color":"#FF0000","bold":true,"italic":false,"obfuscated":false}]','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" 索引顕界"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"索引顕界",Level:1,Interval:0,Trigger:"手に持って右クリック",Count:6}},Count:1b},maxUses:8},{buy:{id:"minecraft:iron_ingot",Count:1b},sell:{id:"minecraft:emerald",Count:3b},maxUses:8},{buy:{id:"minecraft:redstone",Count:1b},sell:{id:"minecraft:emerald",Count:1b},maxUses:8},{buy:{id:"minecraft:copper_ingot",Count:1b},sell:{id:"minecraft:emerald",Count:2b},maxUses:8},{buy:{id:"minecraft:gold_ingot",Count:1b},sell:{id:"minecraft:emerald",Count:3b},maxUses:8},{buy:{id:"minecraft:lapis_lazuli",Count:1b},sell:{id:"minecraft:emerald",Count:3b},maxUses:8},{buy:{id:"minecraft:amethyst_shard",Count:1b},sell:{id:"minecraft:emerald",Count:6b},maxUses:8},{buy:{id:"minecraft:diamond",Count:1b},sell:{id:"minecraft:emerald",Count:12b},maxUses:8},{buy:{id:"minecraft:netherite_ingot",Count:1b},sell:{id:"minecraft:emerald",Count:30b},maxUses:8},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:iron_ingot",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:redstone",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:copper_ingot",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:gold_ingot",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:lapis_lazuli",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:12b},sell:{id:"minecraft:amethyst_shard",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:diamond",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:60b},sell:{id:"minecraft:netherite_ingot",Count:1b},maxUses:6}]},VillagerData:{level:99,profession:"armorer",type:"jungle"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{SpawnTags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,MainA,SpawnParticles]}},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,49,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI3OTdjZjI4ZmY3NjVlNDIyYTAzYzNlN2NlZmY4MTk3OTgzN2VkNDBkNDQxNDE4YzAyMjk5NGE1ODgyMjdkZSJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s攻撃ノ意思ハナイガ、ヤルッテンナラ、覚悟シテモラウゾ。","with":[{"translate":"【能力：取引・反撃・射的・範囲攻撃・火だるま】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"All",Radius:48d,IgnoreBlocks:true}}]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Condition:[{Name:"MP",MP:5,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStone],Level:1}],[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStoneAec],Level:1}]]},{Condition:[{Name:"MinMP",Inverse:true,MP:1,Percent:true}],Name:"Kill"}]}
#Function
data modify storage tusb_mob: Offers set from storage tusb_mob: "即時ステータス"."ベース".Offers
function settings:enemy/global/neutrality/shoot/goblin_merchant_metaltinka/main_b
data modify storage tusb_mob: Offers.Recipes append from storage tusb_mob: "即時ステータス"."ベース".Offers.Recipes[]
data modify storage tusb_mob: "即時ステータス"."ベース".Offers set from storage tusb_mob: Offers
