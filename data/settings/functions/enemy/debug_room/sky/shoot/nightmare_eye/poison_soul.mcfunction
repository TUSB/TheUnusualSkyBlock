### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ポイゾン・ソウル","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,IsBaby:true,PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,PoisonSoulGivePoison]}],Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,PoisonSoulAppearance]}],TurnCount:3,Turn:[{Index:1,Target:{Look:"Friendly",Radius:64d},Move:{Front:0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:30d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1},Time:60,TimeCount:60}},{Index:2,Target:{Look:"Friendly",Radius:64d},Move:{Front:0.1d,Up:0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:30d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:3,Target:{Look:"Friendly",Radius:64d},Move:{Front:0.1d,Up:-0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:30d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}}]}
