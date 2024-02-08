### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:blaze",CustomName:'{"translate":"コンバットブレイズ"}',Tags:[Mob,Enemy,DelayedData,HasAI,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Chance:d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sいつもより多めに燃やしております！","with":[{"translate":"【能力：射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16,IgnoreBlocks:false}}]}},{Index:2,Skill:[{Interval:{Min:50,Max:50,Current:50},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:7,Max:7,Current:7},Loop:{Max:6,Current:6},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,Combat,BlazeBullet],Level:1}]],Count:2,Settings:[{Name:"Facing",Target:{Look:Player,Radius:16,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-30f,0f],DirectionRange:[60f,0f]},{Name:"Direction",Direction:[0f,-90f],Absolute:{Vertical:true},Speed:1d}]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,Combat,BlazeBullet],Level:1}]],Count:1,Settings:[{Name:"Facing",Target:{Look:Player,Radius:16,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,-90f],Absolute:{Vertical:true},Speed:1d}]}]}]}]}
