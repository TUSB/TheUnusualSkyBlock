### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"ドンチャン花火","color":"#FFFF00"}',Particle:"end_rod",Duration:80,Radius:0.001f,PortalCooldown:42,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,-90f],Absolute:{Vertical:true}}],Name:"Function",Tags:[Global,Ground,Shoot,CommonParticle,Cannon]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Function",Tags:[Global,Friendly,Blow,Donchian,BulletParticleAndSound]},{Name:"Damage",Mob:{Physical:50,Light:200,Hit:true},Distance:{Min:0d,Max:5.5d}},{Name:"Kill"}]},ProjectileDamage:{Light:20}}
