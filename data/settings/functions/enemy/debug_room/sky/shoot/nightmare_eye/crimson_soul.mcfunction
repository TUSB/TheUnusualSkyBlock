### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"クリムゾン・ソウル","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:12b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,IsBaby:true,PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,CrimsonSoulAppearance]}],TurnCount:4,Turn:[{Index:1,Target:{Look:"Player",Radius:28d},Move:{Front:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:28d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:15d,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"Player",Radius:28d},Move:{Front:0.1d,Up:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:28d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:15d,IgnoreBlocks:true}}]}},{Index:3,Target:{Look:"Player",Radius:28d},Move:{Front:0.1d,Up:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:28d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:15d,IgnoreBlocks:true}}]}},{Index:4,Target:{Look:"Player",Radius:28d},Move:{Front:-0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:20d,IgnoreBlocks:true}}]}}]}
