### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":151,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16729088]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:4d}],Name:"function",Tags:[Global,Sky,Shoot,CrimsonEye,BloodInit]}],Attack:[{Condition:[{Name:"random_chance",Chance:0.5d}],Name:"function",Tags:[Global,Sky,Shoot,CrimsonEye,Effect]}],Tick:[{Name:"function",Tags:[Global,Sky,Shoot,CrimsonEye,BloodTick]}]}
#Function
playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.5 0.5 0.1
