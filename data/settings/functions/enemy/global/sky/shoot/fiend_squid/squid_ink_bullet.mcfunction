### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:90,Explosion:{Type:0,Colors:[I;4209480]}}},NoGravity:true,PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-7f,-12f],DirectionRange:[14f,9f],Speed:0.15d,Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Attack:[{Name:"Damage",Player:{DamageType:[Global]},MP:{MP:5,Percent:true},AEC:{Particle:"squid_ink",Duration:80,Radius:2f,Effects:[{Id:14b,Amplifier:9b,Duration:5,ShowParticles:false}]}}]}
