### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{Damage:25d},Distance:{Min:0.1d,Max:1.5d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Kill"},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Blow,LunaticEye,PowderResidual],Level:1}]],Direction:[0f,0f],Speed:0d,Count:1}]}],Exit:{Loop:{Max:1,Current:1}}}]}
