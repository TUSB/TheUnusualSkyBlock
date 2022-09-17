### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"flame",Radius:0.01f,Duration:200,PortalCooldown:80,Tags:[DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Function",Tags:[Global,Event,Function,Debuffs,GivesBurns]},{Name:"Kill"}]}}
