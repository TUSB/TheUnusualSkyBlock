### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snow_golem",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,TickingRequired,AnalyseLog,"BeforeEvolution"],CustomNameVisible:true,CustomName:'{"translate":"フレンド・スノーゴーレム","color":"##FFFF00","bold":true}',active_effects:[{id:"minecraft:haste",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:levitation",duration:18,amplifier:2b,show_particles:true},{id:"minecraft:slow_falling",duration:30,amplifier:0b,show_particles:true}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s雪景色が恋しいです。","with":[{"translate":"【能力：ワープ・射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{Pumpkin:true}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Enemy",Radius:32d}}],Name:"change_turn",Loop:1}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:24}},{Name:"Direction",Direction:[-180f,0f],Speed:2d}],Condition:[{Name:"check_nbt",NBT:{OnGround:false}}],Name:"teleport"}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{Pumpkin:false}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Loop:1}]}]},{Index:4,Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:1b},Rotate:[-5f,-5f],Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Friendly",Radius:4d,IgnoreBlocks:true}},{Name:"check_block",Block:[Air]},{Name:"check_nbt",NBT:{OnGround:false}}],Settings:[{Name:"Direction",Direction:[-180f,-20f],DirectionRange:[360f,0f],Speed:5d,SpeedRange:8d,Absolute:{Horizontal:true}}],Name:"teleport"}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"check_nbt",NBT:{OnGround:false}},{Name:"check_block",Block:[Air]}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-35f],DirectionRange:[360f,0f],Speed:4d,Absolute:{Horizontal:true}}],Name:"teleport"}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Enemy",Radius:32d}}],Name:"function",Tags:[Global,Friendly,Shoot,FriendSnowGolem,Particles]}]},{Interval:{Min:1,Max:5,Current:5},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSnowGolem,Bullet],Level:1}],[{Tags:[Global,Friendly,Shoot,FriendSnowGolem,BulletAec],Level:1}]]}],MP:2},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Enemy",Radius:16d}}],Name:"change_turn",Loop:1}]}]}]}
