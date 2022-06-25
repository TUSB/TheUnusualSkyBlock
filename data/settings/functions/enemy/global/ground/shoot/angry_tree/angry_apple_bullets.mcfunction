### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"apple",Count:1b},NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.7d}],Attack:[{Name:"Damage",Player:{DamageType:[Global]},AEC:{Effects:[{Id:14b,Amplifier:9b,Duration:5,ShowParticles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
