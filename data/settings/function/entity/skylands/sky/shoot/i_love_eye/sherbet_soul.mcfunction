### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:600,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":151,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;12121087]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sひえひえ～。","with":[{"translate":"【能力：格闘・移動・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Parabolic",MotionTick:120,MotionGravity:0.01d,Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}],Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ILoveEye,SherbetSoulTick]}]}
#Function
playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 2 0
