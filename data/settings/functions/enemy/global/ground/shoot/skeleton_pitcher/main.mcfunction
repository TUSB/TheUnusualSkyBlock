### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"スケルトンピッチャー","color":"#FFFFFF"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3026478}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-14844490,-1309914490,-1302249427,239519193],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgwN2RmOGEyY2RiNTg1MDBjN2QyNjY0MzNjM2FhMzU5M2QyM2RkMmU0Yzc5ZjQ4ZGFkZmE4NmJjOWJmNWQxZCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.18d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 70
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d},{Item:{id:"minecraft:bone"},Count:6,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:60,Current:40},Call:[{Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Friendly",Radius:24d}}],Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:129,Explosion:{Type:0b,Colors:[I;16777215]}}},{}]}},{Name:"ChangeTurn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:30,Max:30,Current:30},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,SkeletonPitcher,Bullet],Level:1}]]}]},{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"MergeNBT",NBT:{HandItems:[]}},{Name:"ChangeTurn",Loop:1}]}]}]}
