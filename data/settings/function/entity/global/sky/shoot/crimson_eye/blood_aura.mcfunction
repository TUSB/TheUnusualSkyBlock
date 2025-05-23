### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Radius:2.5f,Duration:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"dust 100000000 0.5 0 1.5"}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BloodAuraInit]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BloodAuraTick]}]}
#Function
playsound minecraft:entity.blaze.ambient hostile @a[distance=..16] ~ ~ ~ 0.5 0 0.01
playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 1 0 0.1
playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 1 0.05 0.1
playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 1 0.1 0.1
