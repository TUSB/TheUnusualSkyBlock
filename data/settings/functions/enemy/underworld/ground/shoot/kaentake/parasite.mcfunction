### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"カエンタケに寄生された村人","color":"#FFFFFF","bold":true}',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:14}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.32d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:2,Chance:0.3d}]
