### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:15,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Event,Function,LightExplosion,ParticleHuge]}]}]}]}
#Function
particle flash ~ ~ ~ 0 0 0 0 10 force
