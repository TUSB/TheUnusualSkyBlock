### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:60,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Common,RandomRotation]},{Name:"Function",Tags:[Global,Event,Function,LightningExplosion,ParticleHuge]}]}]}]}
#Function
# サウンド
playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
# パーティクル
particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=ShowParticles]
