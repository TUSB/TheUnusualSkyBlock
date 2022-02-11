### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"商業ゴブリン・メタルティンカ","color":"#00FF00","bold":true}',PortalCooldown:800,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:iron_ingot",Count:1b},sell:{id:"minecraft:emerald",Count:1b}}]},VillagerData:{level:99,profession:"armorer",type:"jungle"},DeathLootTableSeed:6L,Tags:[Mob,DelayedData,HasAI,CallOnDamage,CooldownRequired,LimitedTrades]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,49,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI3OTdjZjI4ZmY3NjVlNDIyYTAzYzNlN2NlZmY4MTk3OTgzN2VkNDBkNDQxNDE4YzAyMjk5NGE1ODgyMjdkZSJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
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
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"All",Radius:32d}}],Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"MP",MP:5,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStone],Level:1}],[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStoneAec],Level:1}]]}]}
