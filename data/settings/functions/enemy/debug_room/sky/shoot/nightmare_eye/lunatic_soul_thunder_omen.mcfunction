### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,LunaticSoulThunderOmenAppearance]}]}],Exit:{Time:20,TimeCount:20}},{Index:2,Skill:[{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,LunaticSoulThunder],Level:1}]]},{Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
