### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Radius:2f,Duration:400,Effects:[{Id:19,Amplifier:3b,Duration:100}],Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"dust 0 0.3 0.1 1.5"}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,SmogTick]}]}
#Function
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 1 0 0.1
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 1 0.03 0.1
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 1 0.06 0.1
playsound minecraft:block.conduit.deactivate hostile @a[distance=..16] ~ ~ ~ 1 0 0.1
