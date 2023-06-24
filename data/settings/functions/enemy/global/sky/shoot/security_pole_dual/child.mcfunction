### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"セキュリティ・チャイルド・デュアル","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}],NoGravity:true,IsBaby:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,61,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI2YjM4OTRhYTkwYmEwNGQwZGI4OWE2ZGQ2MDIxMGViYjNhZTZmZWI1MGY3NGQ4NTk4ZDU2Y2M4NjYyODIxZiJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 2d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 87
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 147
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 153
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 151
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:5,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:30,IgnoreBlocks:false}}]}},{Index:2,Target:{Look:"Friendly",Radius:30d},Move:{Front:0.3d,Up:0.2d},Rotate:[-5,-5],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:15,IgnoreBlocks:false}}],Time:20,TimeCount:20}},{Index:3,Skill:[{Interval:{Min:100,Max:140,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:[Casting,Cast,Normal]}]},{Interval:{Min:12,Max:12,Current:12},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:4,Current:4},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,SecurityPoleDual,Missile],Level:1}]],Settings:[{Name:"Direction",Target:{Look:"Self"},DirectionRange:[0f,360f],Absolute:{Horizontal:true},SpeedRange:1d}]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,FireworkLaunch]}],MP:3}],Exit:{Loop:{Max:3,Current:3}}},{Index:4,Target:{Look:"Friendly",Radius:10d,IgnoreBlocks:1b},Move:{Front:-0.3d,Up:0.1d},Rotate:[-5f,-5f],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",MinRadius:15,IgnoreBlocks:false}}],Time:20,TimeCount:20}},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,SecurityPole,RunoutEnergy]},{Name:"MergeNBT",NBT:{NoGravity:false}}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}],Exit:{Condition:[{Name:"MinMP",MP:12}]}}]}
