### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"dust 1.000 0.267 0.000 0.5",Radius:0.1f,Duration:2147483647,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Function",Tags:[Global,Event,Bullet,FriendlyFireBall,ParticleAndSound]},{Name:"Damage",Mob:{Hit:true,Physical:3,Fire:30},Distance:{Max:3d}},{Name:"Kill"}]}}
