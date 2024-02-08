### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:151,Explosion:{Type:0,Colors:[I;16729088]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは紅の血で身体が侵食されてしまった。","with":[{"selector":"@s"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:4d}],Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BloodInit]}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,Effect]}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,CrimsonEye,BloodTick]}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.5 0.5 0.1
