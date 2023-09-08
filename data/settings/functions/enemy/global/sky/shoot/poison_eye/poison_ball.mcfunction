### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:slime_ball",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは毒で身体が溶けてしまった。","with":[{"selector":"@s"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,PoisonBallInit]}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,Effect]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,PoisonEye,PoisonBallTick]}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 2.0 0.1
