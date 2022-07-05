### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"dust 0.000 0.000 0.000 4",Radius:0.5f,Duration:400,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Summon,DecoyTeleportPot,Teleport1]}]}],Exit:{Time:80,TimeCount:80}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Summon,DecoyTeleportPot,Teleport1]},{Name:"Function",Tags:[Global,Ground,Summon,DecoyTeleportPot,Teleport2]}]}]}]}
#Function
# サウンド
playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
# パーティクル
particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=ShowParticles]
