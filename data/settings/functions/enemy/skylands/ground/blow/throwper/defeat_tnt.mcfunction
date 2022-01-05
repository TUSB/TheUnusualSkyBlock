### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"破壊可能なTNT","color":"#FFFFFF"}',Silent:true,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:2001,Explosion:{Type:0,Colors:[I;16738408]}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-60f],Speed:1.0d,SpeedRange:2.0d,Target:{Look:"Player",Radius:32d,IgnoreBlocks:false}}],TurnCount:6,Turn:[{Index:1,Exit:{Time:80,TimeCount:80}},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:2001,Explosion:{Type:0,Colors:[I;16738408]}}}]}}]},{Interval:{Min:10,Max:10,Current:10},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:2001,Explosion:{Type:0,Colors:[I;0]}}}]}}]}],Exit:{Loop:{Max:6,Current:6}}},{Index:3,Once:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,CountDown,Count3],Level:1}]]},{Name:"ChangeTurn",Set:2}]}]},{Index:4,Once:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,CountDown,Count2],Level:1}]]},{Name:"ChangeTurn",Set:2}]}]},{Index:5,Once:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,CountDown,Count1],Level:1}]]},{Name:"ChangeTurn",Set:2}]}]},{Index:6,Once:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Bullet,IedTnt],Level:1}]]},{Name:"Kill"}]}]}]}
