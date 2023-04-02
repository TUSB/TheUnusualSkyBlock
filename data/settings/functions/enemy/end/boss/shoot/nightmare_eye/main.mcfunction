### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"ナイトメアアイ","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,PortalCooldown:7000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTimeOut,CallOnTick,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,6,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ3MDM2OTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83MmNiZWE5YWE1OWRmZTdhODQ2N2VjMTUxNmUwNTFlZmRlZGNkYTMxMzg0NmM1ODExY2Q0OGU1MDYzYzJkMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -25
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 400
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier7/common",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Tick:[{Name:"Function",Tags:[End,Boss,Shoot,NightmareEye,Appearance]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:4,Turn:[{Index:1,Target:{Look:"Player",Radius:64d},Move:{Front:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:120,Max:120,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}}],Condition:[{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:60,TimeCount:60}},{Index:2,Target:{Look:"Player",Radius:128d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:64,IgnoreBlocks:1b}},{Name:"Direction",Direction:[180f,-15f],DirectionRange:[180f,30f],Speed:4d,SpeedRange:2d}],Name:"Teleport"}]},{Interval:{Min:10,Max:10,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:5d,IgnoreBlocks:true}}],Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[End,Boss,Shoot,NightmareEye,ArrestBullet],Level:1}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:5d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[End,Boss,Shoot,NightmareEye,Tornado],Level:1}]]}]}],Exit:{Time:60,TimeCount:60}},{Index:4,Target:{Look:"Player",Radius:64d},Move:{Front:0.25d,Up:0.1d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:75,Max:75,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}},{Index:5,Target:{Look:"Player",Radius:64d},Move:{Front:0.25d,Up:-0.1d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:75,Max:75,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true},{Settings:[{Name:"At",Target:{Look:"Player",Radius:60d,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.9d}],Name:"Teleport",Message:true}]}],Exit:{Loop:{Max:1,Current:1},Time:30,TimeCount:30}}]}
