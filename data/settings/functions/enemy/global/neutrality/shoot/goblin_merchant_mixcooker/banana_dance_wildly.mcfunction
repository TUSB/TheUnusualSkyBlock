### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:81}},NoGravity:true,PortalCooldown:80,Tags:[DelayedData,CallOnInit,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1d}],Attack:[{Name:"Damage",Player:{},MP:{MP:50,Percent:true},Distance:{Max:1d},AEC:{Particle:"dust",Color:16766255,Duration:10,Radius:1f,Effects:[{Id:1b,Amplifier:100b,Duration:5,ShowParticles:false}]}}],ProjectileDamage:{Physical:50,Lightning:100}}
