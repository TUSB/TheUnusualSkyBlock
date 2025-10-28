### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ライトニングボール","color":"#FFFFFF","bold":true}',Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}}],Name:"smart_motion",TP:true,Speed:{Set:60d,Range:10d},Gravity:{Set:30d}},{Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,BallSpawnDirection]},{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f]}],Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,BallMagicSquare]}],Attack:[{Condition:[{Name:"random_chance",Chance:0.65d}],Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,Paralysis]}],Tick:[{Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,BallAppearance]}]}
