### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"ナイトメアアイ","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,6,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ3MDM2OTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83MmNiZWE5YWE1OWRmZTdhODQ2N2VjMTUxNmUwNTFlZmRlZGNkYTMxMzg0NmM1ODExY2Q0OGU1MDYzYzJkMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 400
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,Appearance]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:7,Turn:[{Index:1,Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:1b},Move:{Front:0.27d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:20,Max:30,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"インターバル","color":"#CA3737"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:1b},Move:{Front:-0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:5,Max:30,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"インターバル後ろ","color":"#CA3737"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:3,Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:1b},Move:{Front:0.2d,Up:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:5,Max:30,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"インターバル↑","color":"#CA3737"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:4,Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:1b},Move:{Front:0.2d,Up:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:5,Max:30,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"インターバル↓","color":"#CA3737"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:5,Target:{Look:"Friendly",Radius:20d,IgnoreBlocks:1b},Move:{Front:-0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"Teleport","color":"#008000"}'},{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-180f,-90f],Speed:5d,SpeedRange:1d}],Name:"Teleport"},{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,TeleportDirection]}]},{Interval:{Min:5,Max:10,Current:10},Loop:{Max:3,Current:3},Call:[{Name:"Message",Message:'{"translate":"Gift","color":"#008000"}'},{Settings:[{Name:"Direction",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,Santa],Level:1}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:1},{Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:3},{Name:"ChangeTurn",Set:4}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:6,Target:{Look:"Friendly",Radius:20d,IgnoreBlocks:1b},Move:{Front:-0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:4,Max:10,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"Teleport","color":"#4169e1"}'},{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-180f,-90f],Speed:5d,SpeedRange:1d}],Name:"Teleport"},{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,TeleportDirection]}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:5,Current:5},Call:[{Name:"Message",Message:'{"translate":"Impact","color":"#4169e1"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true},Direction:[-360f,0f],Speed:1d,SpeedRange:2d}],Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,Impact],Level:1}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:1},{Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:3},{Name:"ChangeTurn",Set:4}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:7,Target:{Look:"Friendly",Radius:20d,IgnoreBlocks:1b},Move:{Front:-0.15d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:2,Max:2,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"Teleport","color":"#dc143c"}'},{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-180f,-90f],Speed:5d,SpeedRange:1d}],Name:"Teleport"},{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,TeleportDirection]}]},{Interval:{Min:5,Max:10,Current:5},Loop:{Max:6,Current:6},Call:[{Name:"Message",Message:'{"translate":"Impact","color":"#4169e1"}'},{Settings:[{Name:"Direction",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true},Direction:[-360f,0f],Speed:1d,SpeedRange:2d}],Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,CarePackageOmen],Level:1}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:1},{Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:3},{Name:"ChangeTurn",Set:4}]}],Exit:{Loop:{Max:1,Current:1}}}]}
