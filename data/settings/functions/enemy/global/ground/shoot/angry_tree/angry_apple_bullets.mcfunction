### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"apple",Count:1b},NoGravity:true,PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 300
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.2d}],Attack:[{Name:"Damage",Player:{DamageType:[Global]},AEC:{Effects:[{Id:14b,Amplifier:9b,Duration:5,ShowParticles:false}]}}]}
