### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ルナティックアイ"}',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,IsBaby:true,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,4,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzNDExMzQ3MjksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNWVlNWM3M2VhOTY4ODFlMmY3YTM5ZDc5YjViYTllMTg1ZmJmZGZmZTExMDI1NGM1NmU2NDM1OThiNjE1ZjYifX19"}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
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
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Target:{Look:"player",Radius:40d,IgnoreBlocks:1b},Move:{Front:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"Teleport",Direction:[0f,0f],DirectionRange:[0f,0f],Speed:5d,SpeedRange:3d,Message:true,Target:{Look:"player",Radius:60d,IgnoreBlocks:true}}]}],Exit:{Loop:{Max:1,Current:1},Time:60,TimeCount:60}},{Index:2,Target:{Look:"player",Radius:40d,IgnoreBlocks:1b},Move:{Front:0.15d,Up:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"Teleport",Direction:[0f,0f],DirectionRange:[0f,0f],Speed:5d,SpeedRange:3d,Message:true,Target:{Look:"player",Radius:60d,IgnoreBlocks:true}}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:3,Target:{Look:"player",Radius:40d,IgnoreBlocks:1b},Move:{Front:0.15d,Up:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"Teleport",Direction:[0f,0f],DirectionRange:[0f,0f],Speed:5d,SpeedRange:3d,Message:true,Target:{Look:"player",Radius:60d,IgnoreBlocks:true}}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}}]}
