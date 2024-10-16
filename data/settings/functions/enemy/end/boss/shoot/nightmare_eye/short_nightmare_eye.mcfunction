### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ショートナイトメアアイ","color":"#FFFFFF"}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],NoGravity:true,IsBaby:true,PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,6,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ3MDM2OTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83MmNiZWE5YWE1OWRmZTdhODQ2N2VjMTUxNmUwNTFlZmRlZGNkYTMxMzg0NmM1ODExY2Q0OGU1MDYzYzJkMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 128d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 100d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

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
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[End,Boss,Shoot,NightmareEye,ShortNightmareEyeDeathParticle]}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Target:{Look:"Player",Radius:64d},Move:{Front:0.3d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1},Time:60,TimeCount:60}},{Index:3,Target:{Look:"Player",Radius:64d},Move:{Front:0.25d,Up:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:4,Target:{Look:"Player",Radius:64d},Move:{Front:0.25d,Up:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}}]}
#Function
particle minecraft:dust 0 0 0.3 2 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1 1 0 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1 0 1 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 5 0 0 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 0 5 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 5 0 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
