### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ゴブリン","color":"#FFFFFF"}',IsBaby:true,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTimeOut,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[{id:"minecraft:wooden_axe",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:1328404}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:197957}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:1328404}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,40,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNhMmNkMTEzYzdlZTZiZjliMDk2OGNmNTUwMTc1M2E0ODU1MmU2ZGJiNDgxYzVhMWY5NDg3Njg3MDg5NmIyZSJ9fX0="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.24d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 80
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sオマエ、スミカ、アラシタ。ダカラ、ウゴカナクシテヤル！","with":[{"translate":"【能力：移動・時間・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:1.2d}],Time:[{Name:"Spawn",Count:1,CountRange:8,SpawnEntities:[[{Tags:[Global,Ground,Blow,Goblins,Goblin,SpawnParticles],Level:1}]],Condition:[{Name:"RandomChance",Chance:0.40d},{Name:"HasTarget",Target:{Look:"Player",Radius:16}}]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:140,Current:200},Call:[{Name:"Step",Direction:[0f,-13f],Speed:0.7d,SpeedRange:1.3d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:8d}}]}],MP:4}]}]}
