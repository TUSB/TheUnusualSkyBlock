### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"オーロラバレット","color":"#FF0000","bold":true}',Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnBlock,CallOnTick,CooldownRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"parabolic",MotionTick:30,MotionGravity:0.04d,Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}]}],Attack:[{Name:"function",Tags:[Global,Sky,Shoot,AuroraEye,Attack1]},{Name:"spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,AuroraEye,Aec],Level:50}]]},{Name:"kill"}],Block:[{Name:"spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,AuroraEye,Aec],Level:50}]]}],Tick:[{Name:"function",Tags:[Global,Sky,Shoot,AuroraEye,BulletTick]}]}
