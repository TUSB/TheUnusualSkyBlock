### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"バレッドキャロット","color":"#FFFF00"}',NoGravity:true,PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:carrot",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.8d}],Attack:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonParticle,Cure]},{Name:"Function",Tags:[Global,Event,Function,CommonParticle,Flash]},{Name:"Function",Tags:[Global,Event,Function,EtcSound,Eat]},{Name:"Damage",Player:{Damage:-1d},AEC:{Effects:[{Id:6b,Amplifier:0b,Duration:20,ShowParticles:false},{Id:23b,Amplifier:100b,Duration:40,ShowParticles:false}]}}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,Yasaosan,ParticleAndSound2]}],ProjectileDamage:{Physical:10,Light:150}}
#Function
particle flash ~ ~ ~ 0 0 0 1 1 normal
