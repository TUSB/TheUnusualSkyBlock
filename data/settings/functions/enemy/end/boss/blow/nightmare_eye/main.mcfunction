### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ナイトメアアイ","color":"#FF0000"}',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,6,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ3MDM2OTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83MmNiZWE5YWE1OWRmZTdhODQ2N2VjMTUxNmUwNTFlZmRlZGNkYTMxMzg0NmM1ODExY2Q0OGU1MDYzYzJkMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier7/mix",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.4d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:120,Max:120,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}}],Condition:[{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:60,TimeCount:60}},{Index:3,Target:{Look:"Player",Radius:128d,IgnoreBlocks:1b},Rotate:[-1f,-1f],Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:64,IgnoreBlocks:1b}},{Name:"Direction",Direction:[180f,-15f],DirectionRange:[1800f,30f],Speed:3d,SpeedRange:5d}],Name:"Teleport"}]},{Interval:{Min:10,Max:10,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:5d,IgnoreBlocks:true}}],Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,ArrestBullet],Level:1}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:5d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,Tornado],Level:1}]]}]}],Exit:{Time:60,TimeCount:60}},{Index:4,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.3d,Up:0.5d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:75,Max:75,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:5,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.3d,Up:-0.1d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:75,Max:75,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}}]}
