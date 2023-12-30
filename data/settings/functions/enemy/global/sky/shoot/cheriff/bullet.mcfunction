### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"バレッドキャロット","color":"#FFFF00"}',NoGravity:true,PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"enchanted_golden_apple",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:3.0d},{Name:"Function",Tags:[Global,Ground,Shoot,CommonParticle,Cannon]}],Attack:[{Name:"Function",Tags:[Global,Sky,Shoot,Cheriff,ParticleAndSound5]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,Cheriff,ParticleAndSound2]}],ProjectileDamage:{Physical:30,Dark:150}}
#Function
particle flash ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:block.ender_chest.open neutral @a[distance=..32] ~ ~ ~ 10.0 2 0.1
playsound minecraft:block.chorus_flower.grow neutral @a[distance=..32] ~ ~ ~ 10.0 2 0.1
playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..32] ~ ~ ~ 10.0 2 0.1
