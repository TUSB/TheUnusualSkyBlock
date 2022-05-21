### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"アマノジャクリーパー","color":"#FFFFFF"}',Fuse:200,ExplosionRadius:0f,Glowing:true,Tags:[Mob,Enemy,DelayedData,CallOnDamage,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.29d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier1/mix",Count:1,Chance:0.1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Settings:[{Name:"At",Target:{Look:"Friendly",Radius:8}},{Name:"Direction",Direction:[-180f,0f],Speed:2d}],Name:"Teleport"},{Name:"MergeNBT",NBT:{ExplosionRadius:5b,Fuse:0s,ignited:true}}]}
