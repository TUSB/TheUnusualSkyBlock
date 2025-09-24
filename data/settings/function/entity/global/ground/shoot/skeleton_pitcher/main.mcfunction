### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"スケルトンピッチャー","color":"#FFFFFF"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3026478}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16777215}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16777215}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-14844490,-1309914490,-1302249427,239519193],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgwN2RmOGEyY2RiNTg1MDBjN2QyNjY0MzNjM2FhMzU5M2QyM2RkMmU0Yzc5ZjQ4ZGFkZmE4NmJjOWJmNWQxZCJ9fX0="}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.18d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d},{Item:{id:"minecraft:bone"},Count:6,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s骨髄に染みる投擲を心がけています。","with":[{"translate":"【能力：射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:60,Current:40},Call:[{Condition:[{Global:1b,Name:"has_target",Target:{Look:"Friendly",Radius:24d}}],Name:"merge_nbt",NBT:{HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:129,Explosion:{Type:0b,Colors:[I;16777215]}}},{}]}},{Name:"change_turn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:30,Max:30,Current:30},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,SkeletonPitcher,Bullet],Level:1}]]}],MP:5},{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"merge_nbt",NBT:{HandItems:[]}},{Name:"change_turn",Loop:1}]}]}]}
