### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"enchanted_golden_apple",Count:1b},NoGravity:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1d}],Attack:[{Name:"Damage",Player:{DamageType:[Global]},Distance:{Max:1d},AEC:{Particle:"dust",Color:16768870,Duration:10,Radius:0.5f,Effects:[{Id:14b,Amplifier:6b,Duration:5,ShowParticles:false}]}}]}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
