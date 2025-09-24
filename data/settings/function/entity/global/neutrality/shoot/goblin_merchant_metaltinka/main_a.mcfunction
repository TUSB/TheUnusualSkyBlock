### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,"WanderingVillager","UpdateOffers"],CustomName:'{"translate":"商業ゴブリン・メタルティンカ","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"armorer",type:"jungle"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{SpawnTags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,MainA,SpawnParticles]}}},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,49,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI3OTdjZjI4ZmY3NjVlNDIyYTAzYzNlN2NlZmY4MTk3OTgzN2VkNDBkNDQxNDE4YzAyMjk5NGE1ODgyMjdkZSJ9fX0="}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s攻撃ノ意思ハナイガ、ヤルッテンナラ、覚悟シテモラウゾ。","with":[{"translate":"【能力：取引・反撃・射的・範囲攻撃・火だるま】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"All",Radius:48d,IgnoreBlocks:true}}]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Condition:[{Name:"mp",MP:5,Percent:true}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStone],Level:1}],[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStoneAec],Level:1}]]},{Condition:[{Name:"min_mp",Inverse:true,MP:1,Percent:true}],Name:"kill"}]}
#Function
data modify storage tusb_mob: Offers set from storage tusb_mob: "即時ステータス"."ベース".Offers
function settings:enemy/global/neutrality/shoot/goblin_merchant_metaltinka/main_b
data modify storage tusb_mob: Offers.Recipes append from storage tusb_mob: "即時ステータス"."ベース".Offers.Recipes[]
data modify storage tusb_mob: "即時ステータス"."ベース".Offers set from storage tusb_mob: Offers
