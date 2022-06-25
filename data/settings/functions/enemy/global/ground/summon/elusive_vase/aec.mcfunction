### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"dust 0.000 0.000 0.000 4",Radius:0.5f,Duration:100,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:4,Max:16,Current:4},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,Common,SummonFromRegion]}],Once:1}]}]}
#Function
# サウンド
playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
# パーティクル
particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=ShowParticles]
