### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:20,Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Event,Function,IceExplosion,ParticleHuge]}]}
#Function
particle flash ~ ~ ~ 0 0 0 0 10 force
