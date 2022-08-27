### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Team:"Friendly",CustomName:'{"translate":"フレンドリーポイゾンアイ","color":"#FFFF00","bold":true}',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,IsBaby:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,2,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQzNzI1NzgsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iMjllOTU5OWU4MzA0ZDM2MWQxN2UyODMxYjBmZDQzYjA3NDFjYjVkN2ZiNmRiNTcwNTM1ODdjZDI5ZTI5In19fQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:4,Turn:[{Index:1,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:1b},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}},{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:10d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}],Exit:{Loop:{Max:1,Current:1},Time:60,TimeCount:60}},{Index:3,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.1d,Up:0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:4,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.1d,Up:-0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
