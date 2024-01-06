### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"ドンチャン花火","color":"#FFFF00"}',Particle:"end_rod",Radius:0.01f,Duration:8000,PortalCooldown:60,Tags:[DelayedData,HasAI,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Damage",Mob:{Physical:100,Light:180,Hit:true},Distance:{Min:0d,Max:5.5d},Explosion:-1},{Name:"Function",Tags:[Global,Friendly,Blow,Donchian,BulletParticleAndSound]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Damage",Mob:{Physical:100,Light:180,Hit:true},Distance:{Min:0d,Max:5.5d},Explosion:-1},{Name:"Function",Tags:[Global,Friendly,Blow,Donchian,BulletParticleAndSound]}]}}
