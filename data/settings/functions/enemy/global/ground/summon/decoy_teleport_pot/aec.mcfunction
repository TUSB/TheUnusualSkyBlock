### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Duration:350,Radius:0.001f,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:30,Current:30},Call:[{Name:"Function",Tags:[Global,Event,Function,Common,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Summon,DecoyTeleportPot,Teleport]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Event,Function,Common,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Summon,DecoyTeleportPot,Teleport1]},{Name:"Function",Tags:[Global,Ground,Summon,DecoyTeleportPot,Teleport2]}]}]}]}
#Function
# サウンド
playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 1.0 0.5
playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 1.0 0.5
# パーティクル
particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=ShowParticles]
