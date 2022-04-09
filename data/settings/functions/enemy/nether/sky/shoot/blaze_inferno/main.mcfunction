### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:blaze",CustomNameVisible:true,CustomName:'{"translate":"ブレイズインフェルノ","color":"#FFFFFF"}',Tags:[Mob,DelayedData,HasAI,CallOnDamage,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/magic_stone/tier1/mix",Count:1,Chance:0.1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Element:[Fire],Settings:[{Name:"Direction",Direction:[0f,0f],Speed:4d},{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:false}}],Condition:[{Name:"MP",MP:50}],Name:"Spawn",SpawnEntities:[[{Tags:[Nether,Sky,Shoot,BlazeInferno,FlameReflection],Level:1}]],Count:16}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:80,Current:80},Call:[{Condition:[{Name:"MP",MP:20}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Target:{Look:"Player",Radius:24d},Move:{Side:0.25d},Rotate:[90f,90f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:10,Current:10},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48}},{Name:"Direction",Direction:[0f,0f],Speed:1d},{Name:"Rotation",Direction:[-3f,-3f],DirectionRange:[6f,6f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Nether,Sky,Shoot,BlazeInferno,HellsFlameShot],Level:1}]]}]},{Interval:{Min:120,Max:120,Current:120},Call:[{}]}],Exit:{Loop:{Max:6,Current:6}}},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Target:{Look:"Player",Radius:24d},Move:{Side:-0.25d},Rotate:[90f,90f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:10,Current:10},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48}},{Name:"Direction",Direction:[0f,-0f],Speed:1d},{Name:"Rotation",Direction:[-3f,-3f],DirectionRange:[6f,6f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Nether,Sky,Shoot,BlazeInferno,HellsFlameShot],Level:1}]]}]},{Interval:{Min:120,Max:120,Current:120},Call:[{}]}],Exit:{Loop:{Max:6,Current:6}}}]}
