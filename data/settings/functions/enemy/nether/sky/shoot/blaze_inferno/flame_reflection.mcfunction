### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:15,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,PortalCooldown:60,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-3f,-3f],DirectionRange:[6f,6f],Speed:0.3d,SpeedRange:0.9d,Target:{Look:"player",Radius:64d,IgnoreBlocks:true}}],Attack:[{Name:"Damage",Player:{DamageType:[Global]},AEC:{Effects:[{Id:14b,Amplifier:3b,Duration:100,ShowParticles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 5 0.8
