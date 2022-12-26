### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"ナイトメアアイ","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],NoGravity:true,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick]}
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
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,Appearance]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:3,Turn:[{Index:1,Target:{Look:"Player",Radius:45d,IgnoreBlocks:1b},Move:{Front:0.27d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:20,Max:60,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"インターバル","color":"#CA3737"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d,MinRadius:5d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:3,Current:3},Call:[{Name:"Message",Message:'{"translate":"Teleport","color":"#CB3737"}'}]},{Interval:{Min:20,Max:20,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"Gift","color":"#CB3737"}'}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"Teleport","color":"#CC3737"}'}]}]}]}