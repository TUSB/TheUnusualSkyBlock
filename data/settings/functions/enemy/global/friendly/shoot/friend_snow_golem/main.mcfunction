### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snow_golem",Team:"Friendly",CustomName:'{"translate":"フレンド・スノーゴーレム","color":"#FFBB00","bold":true}',CustomNameVisible:true,ActiveEffects:[{Id:3b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:25b,Duration:18,Amplifier:2b,ShowParticles:true},{Id:28b,Duration:30,Amplifier:0b,ShowParticles:true}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 425
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Pumpkin:true}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:32d}}],Name:"ChangeTurn",Set:3}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:24}},{Name:"Direction",Direction:[-180f,0f],Speed:2d}],Condition:[{Name:"CheckNBT",NBT:{OnGround:false}}],Name:"Teleport"}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Pumpkin:false}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:4}]}]},{Index:4,Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:1b},Rotate:[-5f,-5f],Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:4d,IgnoreBlocks:true}},{Name:"CheckBlock",Block:[Air]},{Name:"CheckNBT",NBT:{OnGround:false}}],Settings:[{Name:"Direction",Direction:[-180f,-20f],DirectionRange:[360f,0f],Speed:5d,SpeedRange:8d,Absolute:{Vertical:true}}],Name:"Teleport"}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",NBT:{OnGround:false}},{Name:"CheckBlock",Block:[Air]}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-35f],DirectionRange:[360f,0f],Speed:4d,Absolute:{Vertical:true}}],Name:"Teleport"}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:32d}}],Name:"Function",Tags:[Global,Friendly,Shoot,FriendSnowGolem,Particles]}]},{Interval:{Min:1,Max:5,Current:5},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSnowGolem,Bullet],Level:1}],[{Tags:[Global,Friendly,Shoot,FriendSnowGolem,BulletAec],Level:1}]]}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d}}],Name:"ChangeTurn",Set:1}]}]}]}
