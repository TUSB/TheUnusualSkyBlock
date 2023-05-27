### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ルナティック・ソウル","color":"#FF0000"}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:0b}],NoGravity:true,IsBaby:true,PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.8d}],Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,Paralysis]}],Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,LunaticSoulAppearance]}],TurnCount:3,Turn:[{Index:1,Target:{Look:"Player",Radius:32d},Move:{Front:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],DirectionRange:[-90f,0f],Speed:5d,SpeedRange:3d}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.8d}],Name:"Teleport",Message:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],DirectionRange:[180f,0f],Speed:5d,SpeedRange:3d}],Condition:[{Name:"RandomChance",Chance:0.3d}],Name:"Teleport",Message:true}]}]},{Index:2,Target:{Look:"Player",Radius:32d},Move:{Front:0.2d,Up:0.3d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],DirectionRange:[-90f,0f],Speed:5d,SpeedRange:3d}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.2d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:3,Target:{Look:"Player",Radius:32d},Move:{Front:0.2d,Up:-0.1d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],DirectionRange:[-90f,0f],Speed:5d,SpeedRange:3d}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}}]}
