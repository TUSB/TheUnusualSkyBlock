### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:600,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:151,Explosion:{Type:0,Colors:[I;9389102]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは「アイ・ラブ・ユー！」と愛を叫んで倒れた。","with":[{"selector":"@s"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Parabolic",MotionTick:120,MotionGravity:0.01d,Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]}],Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ILoveEye,DemonSoulTick]}]}
#Function
playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 2 0
